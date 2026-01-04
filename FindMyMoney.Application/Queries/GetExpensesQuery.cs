using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Application.Queries;

/// <summary>
/// Query that represents a request to retrieve expenses for a user.
/// Follows the CQRS pattern for read operations.
/// </summary>
public class GetExpensesQuery
{
    /// <summary>
    /// Gets or sets the identifier of the user whose expenses to retrieve
    /// </summary>
    public int UserId { get; set; }

    /// <summary>
    /// Gets or sets the optional start date to filter expenses.
    /// If null, no start date filter is applied.
    /// </summary>
    public DateTime? StartDate { get; set; }

    /// <summary>
    /// Gets or sets the optional end date to filter expenses.
    /// If null, no end date filter is applied.
    /// </summary>
    public DateTime? EndDate { get; set; }
}

/// <summary>
/// Defines the contract for handling expense retrieval queries
/// </summary>
public interface IGetExpensesQueryHandler
{
    /// <summary>
    /// Handles the expense retrieval query
    /// </summary>
    /// <param name="query">The query containing filter parameters</param>
    /// <returns>A Result containing the list of expenses if successful, or an error message</returns>
    Task<Result<List<Expense>>> HandleAsync(GetExpensesQuery query);
}
