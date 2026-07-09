namespace FindMyMoney.Domain.IService;

/// <summary>
/// Service for user-related operations
/// </summary>
public interface IUserService
{
    /// <summary>
    /// Gets the current authenticated user's ID
    /// </summary>
    Task<Guid> GetCurrentUserIdAsync();

    /// <summary>
    /// Gets the current authenticated user's username
    /// </summary>
    Task<string?> GetCurrentUserNameAsync();
}
