using FindMyMoney.Domain.IService;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

/// <summary>
/// Service for user-related operations
/// </summary>
public class UserService : IUserService
{
    private readonly IAuthService _authService;
    private readonly ILogger<UserService> _logger;
    private Guid? _cachedUserId;

    public UserService(IAuthService authService, ILogger<UserService> logger)
    {
        _authService = authService;
        _logger = logger;
    }

    public async Task<Guid> GetCurrentUserIdAsync()
    {
        try
        {
            if (_cachedUserId.HasValue)
            {
                return _cachedUserId.Value;
            }

            var result = await _authService.GetCurrentUserAsync();
            if (result.IsSuccess && result.Data != null)
            {
                _cachedUserId = result.Data.Id;
                return result.Data.Id;
            }

            _logger.LogWarning("Failed to get current user ID");
            return Guid.Empty;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting current user ID");
            return Guid.Empty;
        }
    }

    public async Task<string?> GetCurrentUserNameAsync()
    {
        try
        {
            var result = await _authService.GetCurrentUserAsync();
            return result.IsSuccess ? result.Data?.Username : null;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting current username");
            return null;
        }
    }
}
