using FindMyMoney.Domain.DTOs.Auth;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

/// <summary>
/// API service for user login operations
/// </summary>
public interface ILoginApiService
{
    /// <summary>
    /// Authenticates a user and returns a JWT token.
    /// </summary>
    [Post("/api/findmymoney/Auth/login")]
    Task<LoginResponse> LoginAsync([Body] LoginRequest request);

    /// <summary>
    /// Validates a JWT token.
    /// </summary>
    [Post("/api/findmymoney/Auth/validate-token")]
    Task<ValidateTokenResponse> ValidateTokenAsync([Body] ValidateTokenRequest request);
}
