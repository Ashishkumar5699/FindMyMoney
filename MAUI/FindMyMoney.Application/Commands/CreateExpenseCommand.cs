using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Application.Commands;

/// <summary>
/// Command that represents a request to create a new expense.
/// Follows the CQRS pattern for write operations.
/// </summary>
public class CreateExpenseCommand
{
    /// <summary>
    /// Gets or sets the identifier of the user creating the expense
    /// </summary>
    public Guid UserId { get; set; }

    /// <summary>
    /// Gets or sets the amount of money spent
    /// </summary>
    public decimal Amount { get; set; }

    /// <summary>
    /// Gets or sets the category of the expense (e.g., Food, Transport)
    /// </summary>
    public string Category { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets a description providing details about the expense
    /// </summary>
    public string Description { get; set; } = string.Empty;

    /// <summary>
    /// Gets or sets the date when the expense occurred
    /// </summary>
    public DateTime Date { get; set; }
}

/// <summary>
/// Defines the contract for handling expense creation commands
/// </summary>
public interface ICreateExpenseCommandHandler
{
    /// <summary>
    /// Handles the expense creation command
    /// </summary>
    /// <param name="command">The command containing expense details</param>
    /// <returns>A Result containing the created expense if successful, or an error message</returns>
    Task<Result<Expense>> HandleAsync(CreateExpenseCommand command);
}
