namespace FindMyMoney.Domain.Models;

/// <summary>
/// Represents an income transaction in the financial tracking system
/// </summary>
public class Income
{
    /// <summary>
    /// Gets or sets the unique identifier for the income
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Gets or sets the identifier of the user who owns this income
    /// </summary>
    public int UserId { get; set; }

    /// <summary>
    /// Gets or sets the monetary amount of the income
    /// </summary>
    public decimal Amount { get; set; }

    /// <summary>
    /// Gets or sets the source of the income (e.g., Salary, Freelance, Investment)
    /// </summary>
    public string Source { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets a detailed description of the income
    /// </summary>
    public string Description { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets the date when the income was received
    /// </summary>
    public DateTime Date { get; set; }

    /// <summary>
    /// Gets or sets the date and time when this income record was created
    /// </summary>
    public DateTime CreatedAt { get; set; }

    /// <summary>
    /// Gets or sets the date and time when this income record was last updated.
    /// Null if never updated.
    /// </summary>
    public DateTime? UpdatedAt { get; set; }

    /// <summary>
    /// Gets or sets the navigation property to the user who owns this income
    /// </summary>
    public User? User { get; set; }
}
