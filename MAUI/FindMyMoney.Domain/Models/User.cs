namespace FindMyMoney.Domain.Models;

/// <summary>
/// Represents a user in the system
/// </summary>
public class User
{
    /// <summary>
    /// Gets or sets the unique identifier for the user
    /// </summary>
    public Guid Id { get; set; }

    /// <summary>
    /// Gets or sets the username for login authentication
    /// </summary>
    public string Username { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets the user's email address
    /// </summary>
    public string Email { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets the hashed password for authentication.
    /// Should never store plain text passwords.
    /// </summary>
    public string PasswordHash { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets the date and time when the user account was created
    /// </summary>
    public DateTime CreatedAt { get; set; }

    /// <summary>
    /// Gets or sets the date and time of the user's last login.
    /// Null if the user has never logged in.
    /// </summary>
    public DateTime? LastLoginAt { get; set; }

    /// <summary>
    /// Gets or sets a value indicating whether the user account is active.
    /// Inactive accounts cannot log in.
    /// </summary>
    public bool IsActive { get; set; } = true;
}
