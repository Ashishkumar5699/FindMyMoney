using FindMyMoney.Domain.Models;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

/// <summary>
/// API service for user profile operations
/// </summary>
public interface IUserApiService
{
    /// <summary>
    /// Retrieves the currently authenticated user's information.
    /// </summary>
    [Get("/api/findmymoney/Auth/me")]
    Task<User> GetCurrentUserAsync([Header("Authorization")] string authorization);
}
