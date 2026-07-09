using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

/// <summary>
/// Service for income operations
/// </summary>
public class IncomeService : BaseService<IIncomeRepository>, IIncomeService
{
    private readonly ILogger<IncomeService> _logger;

    public IncomeService(
        IIncomeRepository repository,
        IDialogService dialogService,
        IMapper mapper,
        IUserService userService,
        ILogger<IncomeService> logger)
        : base(repository, dialogService, mapper, userService)
    {
        _logger = logger;
    }

    public async Task<Result<Income>> GetByIdAsync(Guid incomeId)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<Income>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<Income>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting income {IncomeId} for user {UserId}", incomeId, userId);
            return await Repository.GetByIdAsync(userId, incomeId);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting income {IncomeId}", incomeId);
            await DialogService.ShowAlertAsync("Error", "Failed to load income.");
            return Result<Income>.Failure($"Failed to get income: {ex.Message}");
        }
    }

    public async Task<Result<List<Income>>> GetIncomesAsync()
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<List<Income>>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<List<Income>>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting incomes for user {UserId}", userId);
            return await Repository.GetByUserIdAsync(userId);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting incomes");
            await DialogService.ShowAlertAsync("Error", "Failed to load incomes.");
            return Result<List<Income>>.Failure($"Failed to get incomes: {ex.Message}");
        }
    }

    public async Task<Result<List<Income>>> GetIncomesByDateRangeAsync(DateTime startDate, DateTime endDate)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<List<Income>>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<List<Income>>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting incomes for user {UserId} from {StartDate} to {EndDate}", userId, startDate, endDate);
            return await Repository.GetByDateRangeAsync(userId, startDate, endDate);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting incomes by date range");
            await DialogService.ShowAlertAsync("Error", "Failed to load incomes.");
            return Result<List<Income>>.Failure($"Failed to get incomes: {ex.Message}");
        }
    }

    public async Task<Result<Income>> CreateIncomeAsync(Income income)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<Income>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<Income>.Failure("User not authenticated");
            }

            income.UserId = userId;
            income.CreatedAt = DateTime.UtcNow;

            _logger.LogInformation("Creating income for user {UserId}", userId);
            var result = await Repository.CreateAsync(income);

            if (result.IsSuccess)
            {
                await DialogService.ShowAlertAsync("Success", "Income created successfully.");
            }

            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error creating income");
            await DialogService.ShowAlertAsync("Error", "Failed to create income.");
            return Result<Income>.Failure($"Failed to create income: {ex.Message}");
        }
    }

    public async Task<Result> UpdateIncomeAsync(Income income)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result.Failure("User not authenticated");
            }

            income.UserId = userId;
            income.UpdatedAt = DateTime.UtcNow;

            _logger.LogInformation("Updating income {IncomeId} for user {UserId}", income.Id, userId);
            var result = await Repository.UpdateAsync(income);

            if (result.IsSuccess)
            {
                await DialogService.ShowAlertAsync("Success", "Income updated successfully.");
            }

            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error updating income {IncomeId}", income.Id);
            await DialogService.ShowAlertAsync("Error", "Failed to update income.");
            return Result.Failure($"Failed to update income: {ex.Message}");
        }
    }

    public async Task<Result> DeleteIncomeAsync(Guid incomeId)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result.Failure("User not authenticated");
            }

            _logger.LogInformation("Deleting income {IncomeId} for user {UserId}", incomeId, userId);
            var result = await Repository.DeleteAsync(userId, incomeId);

            if (result.IsSuccess)
            {
                await DialogService.ShowAlertAsync("Success", "Income deleted successfully.");
            }

            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting income {IncomeId}", incomeId);
            await DialogService.ShowAlertAsync("Error", "Failed to delete income.");
            return Result.Failure($"Failed to delete income: {ex.Message}");
        }
    }

    public async Task<Result<decimal>> GetTotalIncomeAsync(DateTime? startDate = null, DateTime? endDate = null)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<decimal>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<decimal>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting total income for user {UserId}", userId);
            return await Repository.GetTotalIncomeByUserAsync(userId, startDate, endDate);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting total income");
            await DialogService.ShowAlertAsync("Error", "Failed to calculate total income.");
            return Result<decimal>.Failure($"Failed to get total income: {ex.Message}");
        }
    }
}
