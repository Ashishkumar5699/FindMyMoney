using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Incomes;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Common;
using FindMyMoney.Infrastructure.Mappers;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Repositories;

public class IncomeRepository(IIncomeRESTRepository restService, IMapper mapper, ILogger<IncomeRepository> logger)
    : BaseRepoProvider<IIncomeRESTRepository>(restService), IIncomeRepository
{
    private readonly IMapper _mapper = mapper;
    private readonly ILogger<IncomeRepository> _logger = logger;

    public async Task<Result<Income>> GetByIdAsync(Guid userId, Guid incomeId)
    {
        try
        {
            _logger.LogInformation("Getting income by ID: {IncomeId} for user: {UserId}", incomeId, userId);
            
            var response = await RestService.GetIncomeByIdAsync(userId, incomeId);
            var income = _mapper.Map<Income>(response);
            
            return Result<Income>.Success(income);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting income by ID: {IncomeId}", incomeId);
            return Result<Income>.Failure($"Failed to get income: {ex.Message}");
        }
    }

    public async Task<Result<List<Income>>> GetByUserIdAsync(Guid userId)
    {
        try
        {
            _logger.LogInformation("Getting incomes for user: {UserId}", userId);
            
            var responses = await RestService.GetIncomesAsync(userId);
            var incomes = _mapper.Map<List<Income>>(responses);
            
            return Result<List<Income>>.Success(incomes);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting incomes for user: {UserId}", userId);
            return Result<List<Income>>.Failure($"Failed to get incomes: {ex.Message}");
        }
    }

    public async Task<Result<List<Income>>> GetByDateRangeAsync(Guid userId, DateTime startDate, DateTime endDate)
    {
        try
        {
            _logger.LogInformation("Getting incomes for user {UserId} from {StartDate} to {EndDate}", userId, startDate, endDate);
            
            var responses = await RestService.GetIncomesAsync(userId, startDate.Year, startDate.Month);
            
            // Filter by date range
            var filteredResponses = responses
                .Where(r => r.Date >= startDate && r.Date <= endDate)
                .ToList();
            var incomes = _mapper.Map<List<Income>>(filteredResponses);
            
            return Result<List<Income>>.Success(incomes);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting incomes by date range for user: {UserId}", userId);
            return Result<List<Income>>.Failure($"Failed to get incomes: {ex.Message}");
        }
    }

    public async Task<Result<Income>> CreateAsync(Income income)
    {
        try
        {
            _logger.LogInformation("Creating income for user: {UserId}", income.UserId);
            
            var request = _mapper.Map<CreateIncomeRequest>(income);
            var response = await RestService.CreateIncomeAsync(income.UserId, request);
            var createdIncome = _mapper.Map<Income>(response);
            
            return Result<Income>.Success(createdIncome);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error creating income for user: {UserId}", income.UserId);
            return Result<Income>.Failure($"Failed to create income: {ex.Message}");
        }
    }

    public async Task<Result> UpdateAsync(Income income)
    {
        try
        {
            _logger.LogInformation("Updating income: {IncomeId}", income.Id);
            
            var request = _mapper.Map<UpdateIncomeRequest>(income);
            await RestService.UpdateIncomeAsync(income.UserId, income.Id, request);
            
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error updating income: {IncomeId}", income.Id);
            return Result.Failure($"Failed to update income: {ex.Message}");
        }
    }

    public async Task<Result> DeleteAsync(Guid userId, Guid incomeId)
    {
        try
        {
            _logger.LogInformation("Deleting income: {IncomeId} for user: {UserId}", incomeId, userId);
            
            await RestService.DeleteIncomeAsync(userId, incomeId);
            
            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting income: {IncomeId}", incomeId);
            return Result.Failure($"Failed to delete income: {ex.Message}");
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
            
            var filteredIncomes = responses.AsEnumerable();
            
            if (startDate.HasValue && endDate.HasValue)
            {
                filteredIncomes = filteredIncomes.Where(r => r.Date >= startDate.Value && r.Date <= endDate.Value);
            }
            
            var total = filteredIncomes.Sum(r => (decimal)r.Amount);
            
            return Result<decimal>.Success(total);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting total income for user: {UserId}", userId);
            return Result<decimal>.Failure($"Failed to get total income: {ex.Message}");
        }
    }
}
