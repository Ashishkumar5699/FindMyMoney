using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Expenses;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Common;
using FindMyMoney.Infrastructure.Local;
using FindMyMoney.Infrastructure.Local.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Repositories;

public class ExpenseRepository(
    IExpenseRESTRepository restService,
    IMapper mapper,
    LocalDbContext localDb,
    ILogger<ExpenseRepository> logger)
    : BaseRepoProvider<IExpenseRESTRepository>(restService), IExpenseRepository
{
    private readonly IMapper _mapper = mapper;
    private readonly LocalDbContext _localDb = localDb;
    private readonly ILogger<ExpenseRepository> _logger = logger;

    public async Task<Result<Expense>> GetByIdAsync(Guid userId, Guid expenseId)
    {
        try
        {
            _logger.LogInformation("Getting expense by ID: {ExpenseId} for user: {UserId}", expenseId, userId);
            var response = await RestService.GetExpenseByIdAsync(userId, expenseId);
            return Result<Expense>.Success(_mapper.Map<Expense>(response));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for expense {ExpenseId}", expenseId);
            var local = await _localDb.Expenses.FirstOrDefaultAsync(e => e.Id == expenseId);
            if (local == null)
                return Result<Expense>.Failure("Expense not found locally");
            return Result<Expense>.Success(_mapper.Map<Expense>(local));
        }
    }

    public async Task<Result<List<Expense>>> GetByUserIdAsync(Guid userId)
    {
        try
        {
            _logger.LogInformation("Getting expenses for user: {UserId}", userId);
            var responses = await RestService.GetExpensesAsync(userId);
            var expenses = _mapper.Map<List<Expense>>(responses);
            await CacheExpensesLocallyAsync(userId, expenses);
            return Result<List<Expense>>.Success(expenses);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for user {UserId}", userId);
            var local = await _localDb.Expenses.Where(e => e.UserId == userId).ToListAsync();
            return Result<List<Expense>>.Success(_mapper.Map<List<Expense>>(local));
        }
    }

    public async Task<Result<List<Expense>>> GetByDateRangeAsync(Guid userId, DateTime startDate, DateTime endDate)
    {
        try
        {
            _logger.LogInformation("Getting expenses for user {UserId} from {StartDate} to {EndDate}", userId, startDate, endDate);
            var responses = await RestService.GetExpensesAsync(userId, startDate.Year, startDate.Month);
            var filtered = responses.Where(r => r.Date >= startDate && r.Date <= endDate).ToList();
            return Result<List<Expense>>.Success(_mapper.Map<List<Expense>>(filtered));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for date range");
            var local = await _localDb.Expenses
                .Where(e => e.UserId == userId && e.Date >= startDate && e.Date <= endDate)
                .ToListAsync();
            return Result<List<Expense>>.Success(_mapper.Map<List<Expense>>(local));
        }
    }

    public async Task<Result<Expense>> CreateAsync(Expense expense)
    {
        try
        {
            _logger.LogInformation("Creating expense for user: {UserId}", expense.UserId);
            var request = _mapper.Map<CreateExpenseRequest>(expense);
            var response = await RestService.CreateExpenseAsync(expense.UserId, request);
            var created = _mapper.Map<Expense>(response);
            await UpsertLocalExpenseAsync(created, SyncStatus.Synced);
            return Result<Expense>.Success(created);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, saving expense locally with PendingCreate");
            expense.Id = expense.Id == Guid.Empty ? Guid.NewGuid() : expense.Id;
            expense.CreatedAt = DateTime.UtcNow;
            await UpsertLocalExpenseAsync(expense, SyncStatus.PendingCreate);
            return Result<Expense>.Success(expense);
        }
    }

    public async Task<Result> UpdateAsync(Expense expense)
    {
        try
        {
            _logger.LogInformation("Updating expense: {ExpenseId}", expense.Id);
            var request = _mapper.Map<UpdateExpenseRequest>(expense);
            await RestService.UpdateExpenseAsync(expense.UserId, expense.Id, request);
            await UpsertLocalExpenseAsync(expense, SyncStatus.Synced);
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, saving expense update locally with PendingUpdate");
            await UpsertLocalExpenseAsync(expense, SyncStatus.PendingUpdate);
            return Result.Success();
        }
    }

    public async Task<Result> DeleteAsync(Guid userId, Guid expenseId)
    {
        try
        {
            _logger.LogInformation("Deleting expense: {ExpenseId} for user: {UserId}", expenseId, userId);
            await RestService.DeleteExpenseAsync(userId, expenseId);
            var local = await _localDb.Expenses.FirstOrDefaultAsync(e => e.Id == expenseId);
            if (local != null) { _localDb.Expenses.Remove(local); await _localDb.SaveChangesAsync(); }
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, marking expense {ExpenseId} as PendingDelete", expenseId);
            var local = await _localDb.Expenses.FirstOrDefaultAsync(e => e.Id == expenseId);
            if (local != null) { local.SyncStatus = SyncStatus.PendingDelete; await _localDb.SaveChangesAsync(); }
            return Result.Success();
        }
    }

    public async Task<Result<decimal>> GetTotalExpensesByUserAsync(Guid userId, DateTime? startDate = null, DateTime? endDate = null)
    {
        try
        {
            _logger.LogInformation("Getting total expenses for user: {UserId}", userId);
            int? year = startDate?.Year;
            int? month = startDate?.Month;
            var responses = await RestService.GetExpensesAsync(userId, year, month);
            var filtered = responses.AsEnumerable();
            if (startDate.HasValue && endDate.HasValue)
                filtered = filtered.Where(r => r.Date >= startDate.Value && r.Date <= endDate.Value);
            return Result<decimal>.Success(filtered.Sum(r => (decimal)r.Amount));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, calculating total from local DB");
            var query = _localDb.Expenses.Where(e => e.UserId == userId);
            if (startDate.HasValue && endDate.HasValue)
                query = query.Where(e => e.Date >= startDate.Value && e.Date <= endDate.Value);
            var total = await query.SumAsync(e => e.Amount);
            return Result<decimal>.Success(total);
        }
    }

    private async Task CacheExpensesLocallyAsync(Guid userId, List<Expense> expenses)
    {
        try
        {
            var existing = await _localDb.Expenses
                .Where(e => e.UserId == userId && e.SyncStatus == SyncStatus.Synced)
                .ToListAsync();
            _localDb.Expenses.RemoveRange(existing);
            _localDb.Expenses.AddRange(expenses.Select(e => _mapper.Map<LocalExpense>(e)));
            await _localDb.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Failed to cache expenses locally");
        }
    }

    private async Task UpsertLocalExpenseAsync(Expense expense, SyncStatus status)
    {
        try
        {
            var local = await _localDb.Expenses.FirstOrDefaultAsync(e => e.Id == expense.Id);
            if (local == null)
            {
                local = _mapper.Map<LocalExpense>(expense);
                local.SyncStatus = status;
                _localDb.Expenses.Add(local);
            }
            else
            {
                _mapper.Map(expense, local);
                local.SyncStatus = status;
            }
            await _localDb.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Failed to upsert expense locally");
        }
    }
}
