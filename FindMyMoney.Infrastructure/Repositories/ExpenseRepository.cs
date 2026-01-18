using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Expenses;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Common;
using FindMyMoney.Infrastructure.Mappers;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Repositories;

public class ExpenseRepository(IExpenseRESTRepository restService, IMapper mapper, ILogger<ExpenseRepository> logger)
    : BaseRepoProvider<IExpenseRESTRepository>(restService), IExpenseRepository
{
    private readonly IMapper _mapper = mapper;
    private readonly ILogger<ExpenseRepository> _logger = logger;

    public async Task<Result<Expense>> GetByIdAsync(Guid userId, Guid expenseId)
    {
        try
        {
            _logger.LogInformation("Getting expense by ID: {ExpenseId} for user: {UserId}", expenseId, userId);
            
            var response = await RestService.GetExpenseByIdAsync(userId, expenseId);
            var expense = _mapper.Map<Expense>(response);
            
            return Result<Expense>.Success(expense);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting expense by ID: {ExpenseId}", expenseId);
            return Result<Expense>.Failure($"Failed to get expense: {ex.Message}");
        }
    }

    public async Task<Result<List<Expense>>> GetByUserIdAsync(Guid userId)
    {
        try
        {
            _logger.LogInformation("Getting expenses for user: {UserId}", userId);
            
            var responses = await RestService.GetExpensesAsync(userId);
            var expenses = _mapper.Map<List<Expense>>(responses);
            
            return Result<List<Expense>>.Success(expenses);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting expenses for user: {UserId}", userId);
            return Result<List<Expense>>.Failure($"Failed to get expenses: {ex.Message}");
        }
    }

    public async Task<Result<List<Expense>>> GetByDateRangeAsync(Guid userId, DateTime startDate, DateTime endDate)
    {
        try
        {
            _logger.LogInformation("Getting expenses for user {UserId} from {StartDate} to {EndDate}", userId, startDate, endDate);
            
            var responses = await RestService.GetExpensesAsync(userId, startDate.Year, startDate.Month);
            
            // Filter by date range
            var filteredResponses = responses
                .Where(r => r.Date >= startDate && r.Date <= endDate)
                .ToList();
            var expenses = _mapper.Map<List<Expense>>(filteredResponses);
            
            return Result<List<Expense>>.Success(expenses);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting expenses by date range for user: {UserId}", userId);
            return Result<List<Expense>>.Failure($"Failed to get expenses: {ex.Message}");
        }
    }

    public async Task<Result<Expense>> CreateAsync(Expense expense)
    {
        try
        {
            _logger.LogInformation("Creating expense for user: {UserId}", expense.UserId);
            
            var request = _mapper.Map<CreateExpenseRequest>(expense);
            var response = await RestService.CreateExpenseAsync(expense.UserId, request);
            var createdExpense = _mapper.Map<Expense>(response);
            
            return Result<Expense>.Success(createdExpense);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error creating expense for user: {UserId}", expense.UserId);
            return Result<Expense>.Failure($"Failed to create expense: {ex.Message}");
        }
    }

    public async Task<Result> UpdateAsync(Expense expense)
    {
        try
        {
            _logger.LogInformation("Updating expense: {ExpenseId}", expense.Id);
            
            var request = _mapper.Map<UpdateExpenseRequest>(expense);
            await RestService.UpdateExpenseAsync(expense.UserId, expense.Id, request);
            
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error updating expense: {ExpenseId}", expense.Id);
            return Result.Failure($"Failed to update expense: {ex.Message}");
        }
    }

    public async Task<Result> DeleteAsync(Guid userId, Guid expenseId)
    {
        try
        {
            _logger.LogInformation("Deleting expense: {ExpenseId} for user: {UserId}", expenseId, userId);
            
            await RestService.DeleteExpenseAsync(userId, expenseId);
            
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting expense: {ExpenseId}", expenseId);
            return Result.Failure($"Failed to delete expense: {ex.Message}");
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
            
            var filteredExpenses = responses.AsEnumerable();
            
            if (startDate.HasValue && endDate.HasValue)
            {
                filteredExpenses = filteredExpenses.Where(r => r.Date >= startDate.Value && r.Date <= endDate.Value);
            }
            
            var total = filteredExpenses.Sum(r => (decimal)r.Amount);
            
            return Result<decimal>.Success(total);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting total expenses for user: {UserId}", userId);
            return Result<decimal>.Failure($"Failed to get total expenses: {ex.Message}");
        }
    }
}
