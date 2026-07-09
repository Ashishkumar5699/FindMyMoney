using FindMyMoney.Domain.IService;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.UI.Helpers;

/// <summary>
/// Helper class for common authentication operations
/// </summary>
public class AuthHelper
{
    private readonly IAuthService _authService;
    private readonly ILogger<AuthHelper> _logger;

    public AuthHelper(IAuthService authService, ILogger<AuthHelper> logger)
    {
        _authService = authService;
        _logger = logger;
    }

    /// <summary>
    /// Checks if the user is currently authenticated
    /// </summary>
    public async Task<bool> IsUserAuthenticatedAsync()
    {
        try
        {
            return await _authService.IsAuthenticatedAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error checking authentication status");
            return false;
        }
    }

    /// <summary>
    /// Gets the current user's profile
    /// </summary>
    public async Task<string?> GetCurrentUserNameAsync()
    {
        try
        {
            var result = await _authService.GetCurrentUserAsync();

            return result.IsSuccess ? result.Data?.Username : null;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error getting current user");
            return null;
        }
    }

    /// <summary>
    /// Validates the current token
    /// </summary>
    public async Task<bool> ValidateCurrentTokenAsync()
    {
        try
        {
            var result = await _authService.ValidateTokenAsync();

            if (result.IsSuccess)
            {
                return result.Data;
            }

            return false;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error validating token");
            return false;
        }
    }

    /// <summary>
    /// Logs out the current user
    /// </summary>
    public async Task<bool> LogoutAsync()
    {
        try
        {
            var result = await _authService.LogoutAsync();
            return result.IsSuccess;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error during logout");
            return false;
        }
    }
}
