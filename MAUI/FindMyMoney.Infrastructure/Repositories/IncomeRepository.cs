using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Incomes;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Common;
using FindMyMoney.Infrastructure.Local;
using FindMyMoney.Infrastructure.Local.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Repositories;

public class IncomeRepository(
    IIncomeRESTRepository restService,
    IMapper mapper,
    LocalDbContext localDb,
    ILogger<IncomeRepository> logger)
    : BaseRepoProvider<IIncomeRESTRepository>(restService), IIncomeRepository
{
    private readonly IMapper _mapper = mapper;
    private readonly LocalDbContext _localDb = localDb;
    private readonly ILogger<IncomeRepository> _logger = logger;

    public async Task<Result<Income>> GetByIdAsync(Guid userId, Guid incomeId)
    {
        try
        {
            _logger.LogInformation("Getting income by ID: {IncomeId} for user: {UserId}", incomeId, userId);
            var response = await RestService.GetIncomeByIdAsync(userId, incomeId);
            return Result<Income>.Success(_mapper.Map<Income>(response));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for income {IncomeId}", incomeId);
            var local = await _localDb.Incomes.FirstOrDefaultAsync(e => e.Id == incomeId);
            if (local == null)
                return Result<Income>.Failure("Income not found locally");
            return Result<Income>.Success(_mapper.Map<Income>(local));
        }
    }

    public async Task<Result<List<Income>>> GetByUserIdAsync(Guid userId)
    {
        try
        {
            _logger.LogInformation("Getting incomes for user: {UserId}", userId);
            var responses = await RestService.GetIncomesAsync(userId);
            var incomes = _mapper.Map<List<Income>>(responses);
            await CacheIncomesLocallyAsync(userId, incomes);
            return Result<List<Income>>.Success(incomes);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for user {UserId}", userId);
            var local = await _localDb.Incomes.Where(e => e.UserId == userId).ToListAsync();
            return Result<List<Income>>.Success(_mapper.Map<List<Income>>(local));
        }
    }

    public async Task<Result<List<Income>>> GetByDateRangeAsync(Guid userId, DateTime startDate, DateTime endDate)
    {
        try
        {
            _logger.LogInformation("Getting incomes for user {UserId} from {StartDate} to {EndDate}", userId, startDate, endDate);
            var responses = await RestService.GetIncomesAsync(userId, startDate.Year, startDate.Month);
            var filtered = responses.Where(r => r.Date >= startDate && r.Date <= endDate).ToList();
            return Result<List<Income>>.Success(_mapper.Map<List<Income>>(filtered));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, falling back to local DB for date range");
            var local = await _localDb.Incomes
                .Where(e => e.UserId == userId && e.Date >= startDate && e.Date <= endDate)
                .ToListAsync();
            return Result<List<Income>>.Success(_mapper.Map<List<Income>>(local));
        }
    }

    public async Task<Result<Income>> CreateAsync(Income income)
    {
        try
        {
            _logger.LogInformation("Creating income for user: {UserId}", income.UserId);
            var request = _mapper.Map<CreateIncomeRequest>(income);
            var response = await RestService.CreateIncomeAsync(income.UserId, request);
            var created = _mapper.Map<Income>(response);
            await UpsertLocalIncomeAsync(created, SyncStatus.Synced);
            return Result<Income>.Success(created);
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, saving income locally with PendingCreate");
            income.Id = income.Id == Guid.Empty ? Guid.NewGuid() : income.Id;
            income.CreatedAt = DateTime.UtcNow;
            await UpsertLocalIncomeAsync(income, SyncStatus.PendingCreate);
            return Result<Income>.Success(income);
        }
    }

    public async Task<Result> UpdateAsync(Income income)
    {
        try
        {
            _logger.LogInformation("Updating income: {IncomeId}", income.Id);
            var request = _mapper.Map<UpdateIncomeRequest>(income);
            await RestService.UpdateIncomeAsync(income.UserId, income.Id, request);
            await UpsertLocalIncomeAsync(income, SyncStatus.Synced);
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, saving income update locally with PendingUpdate");
            await UpsertLocalIncomeAsync(income, SyncStatus.PendingUpdate);
            return Result.Success();
        }
    }

    public async Task<Result> DeleteAsync(Guid userId, Guid incomeId)
    {
        try
        {
            _logger.LogInformation("Deleting income: {IncomeId} for user: {UserId}", incomeId, userId);
            await RestService.DeleteIncomeAsync(userId, incomeId);
            var local = await _localDb.Incomes.FirstOrDefaultAsync(e => e.Id == incomeId);
            if (local != null) { _localDb.Incomes.Remove(local); await _localDb.SaveChangesAsync(); }
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, marking income {IncomeId} as PendingDelete", incomeId);
            var local = await _localDb.Incomes.FirstOrDefaultAsync(e => e.Id == incomeId);
            if (local != null) { local.SyncStatus = SyncStatus.PendingDelete; await _localDb.SaveChangesAsync(); }
            return Result.Success();
        }
    }

    public async Task<Result<decimal>> GetTotalIncomeByUserAsync(Guid userId, DateTime? startDate = null, DateTime? endDate = null)
    {
        try
        {
            _logger.LogInformation("Getting total income for user: {UserId}", userId);
            int? year = startDate?.Year;
            int? month = startDate?.Month;
            var responses = await RestService.GetIncomesAsync(userId, year, month);
            var filtered = responses.AsEnumerable();
            if (startDate.HasValue && endDate.HasValue)
                filtered = filtered.Where(r => r.Date >= startDate.Value && r.Date <= endDate.Value);
            return Result<decimal>.Success(filtered.Sum(r => (decimal)r.Amount));
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "API unavailable, calculating total from local DB");
            var query = _localDb.Incomes.Where(e => e.UserId == userId);
            if (startDate.HasValue && endDate.HasValue)
                query = query.Where(e => e.Date >= startDate.Value && e.Date <= endDate.Value);
            var total = await query.SumAsync(e => e.Amount);
            return Result<decimal>.Success(total);
        }
    }

    private async Task CacheIncomesLocallyAsync(Guid userId, List<Income> incomes)
    {
        try
        {
            var existing = await _localDb.Incomes
                .Where(e => e.UserId == userId && e.SyncStatus == SyncStatus.Synced)
                .ToListAsync();
            _localDb.Incomes.RemoveRange(existing);
            _localDb.Incomes.AddRange(incomes.Select(e => _mapper.Map<LocalIncome>(e)));
            await _localDb.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Failed to cache incomes locally");
        }
    }

    private async Task UpsertLocalIncomeAsync(Income income, SyncStatus status)
    {
        try
        {
            var local = await _localDb.Incomes.FirstOrDefaultAsync(e => e.Id == income.Id);
            if (local == null)
            {
                local = _mapper.Map<LocalIncome>(income);
                local.SyncStatus = status;
                _localDb.Incomes.Add(local);
            }
            else
            {
                _mapper.Map(income, local);
                local.SyncStatus = status;
            }
            await _localDb.SaveChangesAsync();
        }
        catch (Exception ex)
        {
            _logger.LogWarning(ex, "Failed to upsert income locally");
        }
    }
}
