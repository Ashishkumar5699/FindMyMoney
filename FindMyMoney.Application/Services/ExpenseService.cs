using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

/// <summary>
/// Service for expense operations
/// </summary>
public class ExpenseService : BaseService<IExpenseRepository>, IExpenseService
{
    private readonly ILogger<ExpenseService> _logger;

    public ExpenseService(
        IExpenseRepository repository,
        IDialogService dialogService,
        IMapper mapper,
        IUserService userService,
        ILogger<ExpenseService> logger)
        : base(repository, dialogService, mapper, userService)
    {
        _logger = logger;
    }

    public async Task<Result<Expense>> GetByIdAsync(Guid expenseId)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<Expense>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<Expense>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting expense {ExpenseId} for user {UserId}", expenseId, userId);
            return await Repository.GetByIdAsync(userId, expenseId);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting expense {ExpenseId}", expenseId);
            await DialogService.ShowAlertAsync("Error", "Failed to load expense.");
            return Result<Expense>.Failure($"Failed to get expense: {ex.Message}");
        }
    }

    public async Task<Result<List<Expense>>> GetExpensesAsync()
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<List<Expense>>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<List<Expense>>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting expenses for user {UserId}", userId);
            return await Repository.GetByUserIdAsync(userId);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting expenses");
            await DialogService.ShowAlertAsync("Error", "Failed to load expenses.");
            return Result<List<Expense>>.Failure($"Failed to get expenses: {ex.Message}");
        }
    }

    public async Task<Result<List<Expense>>> GetExpensesByDateRangeAsync(DateTime startDate, DateTime endDate)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<List<Expense>>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<List<Expense>>.Failure("User not authenticated");
            }

            _logger.LogInformation("Getting expenses for user {UserId} from {StartDate} to {EndDate}", userId, startDate, endDate);
            return await Repository.GetByDateRangeAsync(userId, startDate, endDate);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting expenses by date range");
            await DialogService.ShowAlertAsync("Error", "Failed to load expenses.");
            return Result<List<Expense>>.Failure($"Failed to get expenses: {ex.Message}");
        }
    }

    public async Task<Result<Expense>> CreateExpenseAsync(Expense expense)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<Expense>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
            {
                return Result<Expense>.Failure("User not authenticated");
            }

            expense.UserId = userId;
            expense.CreatedAt = DateTime.UtcNow;

            _logger.LogInformation("Creating expense for user {UserId}", userId);
            var result = await Repository.CreateAsync(expense);

            if (result.IsSuccess)
            {
                await DialogService.ShowAlertAsync("Success", "Expense created successfully.");
            }

            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error creating expense");
            await DialogService.ShowAlertAsync("Error", "Failed to create expense.");
            return Result<Expense>.Failure($"Failed to create expense: {ex.Message}");
        }
    }

    public async Task<Result> UpdateExpenseAsync(Expense expense)
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

            expense.UserId = userId;
            expense.UpdatedAt = DateTime.UtcNow;

            _logger.LogInformation("Updating expense {ExpenseId} for user {UserId}", expense.Id, userId);
            var result = await Repository.UpdateAsync(expense);

            if (result.IsSuccess)
            {
                await DialogService.ShowAlertAsync("Success", "Expense updated successfully.");
            }

            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error updating expense {ExpenseId}", expense.Id);
            await DialogService.ShowAlertAsync("Error", "Failed to update expense.");
            return Result.Failure($"Failed to update expense: {ex.Message}");
        }
    }

    public async Task<Result> DeleteExpenseAsync(Guid expenseId)
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

            _logger.LogInformation("Deleting expense {ExpenseId} for user {UserId}", expenseId, userId);
            var result = await Repository.DeleteAsync(userId, expenseId);

            if (result.IsSuccess)
            {
                await DialogService.ShowAlertAsync("Success", "Expense deleted successfully.");
            }

            return result;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting expense {ExpenseId}", expenseId);
            await DialogService.ShowAlertAsync("Error", "Failed to delete expense.");
            return Result.Failure($"Failed to delete expense: {ex.Message}");
        }
    }

    public async Task<Result<decimal>> GetTotalExpensesAsync(DateTime? startDate = null, DateTime? endDate = null)
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

            _logger.LogInformation("Getting total expenses for user {UserId}", userId);
            return await Repository.GetTotalExpensesByUserAsync(userId, startDate, endDate);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting total expenses");
            await DialogService.ShowAlertAsync("Error", "Failed to calculate total expenses.");
            return Result<decimal>.Failure($"Failed to get total expenses: {ex.Message}");
        }
    }
}
