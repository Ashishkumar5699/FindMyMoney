using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

public class EmiService : BaseService<IEmiRepository>, IEmiService
{
    private readonly ILogger<EmiService> _logger;

    public EmiService(
        IEmiRepository repository,
        IDialogService dialogService,
        IMapper mapper,
        IUserService userService,
        ILogger<EmiService> logger)
        : base(repository, dialogService, mapper, userService)
    {
        _logger = logger;
    }

    public async Task<Result<Emi>> GetByIdAsync(Guid emiId)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<Emi>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
                return Result<Emi>.Failure("User not authenticated");

            return await Repository.GetByIdAsync(userId, emiId);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting EMI {EmiId}", emiId);
            return Result<Emi>.Failure($"Failed to get EMI: {ex.Message}");
        }
    }

    public async Task<Result<List<Emi>>> GetEmisAsync(string? status = null)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<List<Emi>>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
                return Result<List<Emi>>.Failure("User not authenticated");

            _logger.LogInformation("Getting EMIs for user {UserId}", userId);
            return await Repository.GetByUserIdAsync(userId, status);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting EMIs");
            return Result<List<Emi>>.Failure($"Failed to get EMIs: {ex.Message}");
        }
    }

    public async Task<Result<Emi>> CreateEmiAsync(Emi emi)
    {
        try
        {
            if (!IsOnline)
            {
                await DialogService.ShowAlertAsync("No Internet", "Please check your internet connection.");
                return Result<Emi>.Failure("No internet connection");
            }

            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
                return Result<Emi>.Failure("User not authenticated");

            emi.UserId = userId;
            emi.CreatedAt = DateTime.UtcNow;

            _logger.LogInformation("Creating EMI for user {UserId}", userId);
            return await Repository.CreateAsync(emi);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error creating EMI");
            return Result<Emi>.Failure($"Failed to create EMI: {ex.Message}");
        }
    }

    public async Task<Result> UpdateEmiAsync(Emi emi)
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
                return Result.Failure("User not authenticated");

            emi.UserId = userId;
            _logger.LogInformation("Updating EMI {EmiId}", emi.Id);
            return await Repository.UpdateAsync(emi);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error updating EMI {EmiId}", emi.Id);
            return Result.Failure($"Failed to update EMI: {ex.Message}");
        }
    }

    public async Task<Result> DeleteEmiAsync(Guid emiId)
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
                return Result.Failure("User not authenticated");

            _logger.LogInformation("Deleting EMI {EmiId}", emiId);
            return await Repository.DeleteAsync(userId, emiId);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting EMI {EmiId}", emiId);
            return Result.Failure($"Failed to delete EMI: {ex.Message}");
        }
    }
}
