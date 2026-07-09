namespace FindMyMoney.Domain.Models;

/// <summary>
/// Represents an expense transaction in the financial tracking system
/// </summary>
public class Expense
{
    /// <summary>
    /// Gets or sets the unique identifier for the expense
    /// </summary>
    public Guid Id { get; set; }

    /// <summary>
    /// Gets or sets the identifier of the user who owns this expense
    /// </summary>
    public Guid UserId { get; set; }

    /// <summary>
    /// Gets or sets the monetary amount of the expense
    /// </summary>
    public decimal Amount { get; set; }

    /// <summary>
    /// Gets or sets the category of the expense (e.g., Food, Transport, Entertainment)
    /// </summary>
    public string Category { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets a detailed description of the expense
    /// </summary>
    public string Description { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets the date when the expense occurred
    /// </summary>
    public DateTime Date { get; set; }

    /// <summary>
    /// Gets or sets the date and time when this expense record was created
    /// </summary>
    public DateTime CreatedAt { get; set; }

    /// <summary>
    /// Gets or sets the date and time when this expense record was last updated.
    /// Null if never updated.
    /// </summary>
    public DateTime? UpdatedAt { get; set; }

    /// <summary>
    /// Gets or sets the navigation property to the user who owns this expense
    /// </summary>
    public User? User { get; set; }
}
