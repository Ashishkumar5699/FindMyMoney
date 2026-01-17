using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.IService;

/// <summary>
/// Service interface for expense operations
/// </summary>
public interface IExpenseService
{
    /// <summary>
    /// Gets an expense by ID
    /// </summary>
    Task<Result<Expense>> GetByIdAsync(Guid expenseId);

    /// <summary>
    /// Gets all expenses for the current user
    /// </summary>
    Task<Result<List<Expense>>> GetExpensesAsync();

    /// <summary>
    /// Gets expenses for the current user within a date range
    /// </summary>
    Task<Result<List<Expense>>> GetExpensesByDateRangeAsync(DateTime startDate, DateTime endDate);

    /// <summary>
    /// Creates a new expense for the current user
    /// </summary>
    Task<Result<Expense>> CreateExpenseAsync(Expense expense);

    /// <summary>
    /// Updates an existing expense
    /// </summary>
    Task<Result> UpdateExpenseAsync(Expense expense);

    /// <summary>
    /// Deletes an expense
    /// </summary>
    Task<Result> DeleteExpenseAsync(Guid expenseId);

    /// <summary>
    /// Gets total expenses for the current user
    /// </summary>
    Task<Result<decimal>> GetTotalExpensesAsync(DateTime? startDate = null, DateTime? endDate = null);
}
