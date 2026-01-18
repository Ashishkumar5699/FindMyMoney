using FindMyMoney.Domain.DTOs.Auth;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

/// <summary>
/// API service for user registration operations
/// </summary>
public interface IRegisterApiService
{
    /// <summary>
    /// Registers a new user in the system.
    /// </summary>
    [Post("/api/findmymoney/Auth/register")]
    Task<RegisterResponse> RegisterAsync([Body] RegisterRequest request);
}
