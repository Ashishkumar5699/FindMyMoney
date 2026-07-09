using FindMyMoney.Domain.DTOs.Expenses;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

/// <summary>
/// Controller for managing personal expenses in FindMyMoney
/// </summary>
public interface IExpenseRESTRepository
{
    /// <summary>
    /// Creates a new expense entry for the authenticated user.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="request">Expense creation details</param>
    [Post("/api/findmymoney/Expenses/{userId}")]
    Task<ExpenseResponse> CreateExpenseAsync(Guid userId, [Body] CreateExpenseRequest request);

    /// <summary>
    /// Retrieves all expenses for the authenticated user with optional filters.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="year">Optional year filter</param>
    /// <param name="month">Optional month filter (1-12)</param>
    /// <param name="category">Optional category filter</param>
    [Get("/api/findmymoney/Expenses/{userId}")]
    Task<List<ExpenseResponse>> GetExpensesAsync(Guid userId, [Query] int? year = null, [Query] int? month = null, [Query] string? category = null);

    /// <summary>
    /// Retrieves a specific expense by ID.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="id">The expense ID</param>
    [Get("/api/findmymoney/Expenses/{userId}/{id}")]
    Task<ExpenseResponse> GetExpenseByIdAsync(Guid userId, Guid id);

    /// <summary>
    /// Updates an existing expense entry.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="id">The expense ID to update</param>
    /// <param name="request">Updated expense details</param>
    [Put("/api/findmymoney/Expenses/{userId}/{id}")]
    Task<ExpenseResponse> UpdateExpenseAsync(Guid userId, Guid id, [Body] UpdateExpenseRequest request);

    /// <summary>
    /// Deletes an expense entry permanently.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="id">The expense ID to delete</param>
    [Delete("/api/findmymoney/Expenses/{userId}/{id}")]
    Task DeleteExpenseAsync(Guid userId, Guid id);
}
