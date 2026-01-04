using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.Repositories;

/// <summary>
/// Defines the contract for user data access operations
/// </summary>
public interface IUserRepository
{
    /// <summary>
    /// Authenticates a user with username and password
    /// </summary>
    /// <param name="username">The username to authenticate</param>
    /// <param name="password">The password to verify</param>
    /// <returns>A Result containing the authenticated user if successful, or an error message</returns>
    Task<Result<User>> LoginAsync(string username, string password);

    /// <summary>
    /// Retrieves a user by their unique identifier
    /// </summary>
    /// <param name="userId">The unique identifier of the user</param>
    /// <returns>A Result containing the user if found, or an error message</returns>
    Task<Result<User>> GetByIdAsync(int userId);

    /// <summary>
    /// Retrieves a user by their username
    /// </summary>
    /// <param name="username">The username to search for</param>
    /// <returns>A Result containing the user if found, or an error message</returns>
    Task<Result<User>> GetByUsernameAsync(string username);

    /// <summary>
    /// Creates a new user in the system
    /// </summary>
    /// <param name="user">The user entity to create</param>
    /// <returns>A Result containing the created user with generated ID if successful, or an error message</returns>
    Task<Result<User>> CreateAsync(User user);

    /// <summary>
    /// Updates an existing user's information
    /// </summary>
    /// <param name="user">The user entity with updated information</param>
    /// <returns>A Result indicating success or failure with error message</returns>
    Task<Result> UpdateAsync(User user);

    /// <summary>
    /// Deletes a user from the system
    /// </summary>
    /// <param name="userId">The unique identifier of the user to delete</param>
    /// <returns>A Result indicating success or failure with error message</returns>
    Task<Result> DeleteAsync(int userId);
}
