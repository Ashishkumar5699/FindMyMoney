using FindMyMoney.Domain.DTOs.Incomes;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

/// <summary>
/// Controller for managing personal income in FindMyMoney
/// </summary>
public interface IIncomeRESTRepository
{
    /// <summary>
    /// Creates a new income entry for the authenticated user.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="request">Income creation details</param>
    [Post("/api/findmymoney/Incomes/{userId}")]
    Task<IncomeResponse> CreateIncomeAsync(Guid userId, [Body] CreateIncomeRequest request);

    /// <summary>
    /// Retrieves all incomes for the authenticated user with optional filters.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="year">Optional year filter</param>
    /// <param name="month">Optional month filter (1-12)</param>
    /// <param name="source">Optional source filter</param>
    [Get("/api/findmymoney/Incomes/{userId}")]
    Task<List<IncomeResponse>> GetIncomesAsync(Guid userId, [Query] int? year = null, [Query] int? month = null, [Query] string? source = null);

    /// <summary>
    /// Retrieves a specific income by ID.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="id">The income ID</param>
    [Get("/api/findmymoney/Incomes/{userId}/{id}")]
    Task<IncomeResponse> GetIncomeByIdAsync(Guid userId, Guid id);

    /// <summary>
    /// Updates an existing income entry.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="id">The income ID to update</param>
    /// <param name="request">Updated income details</param>
    [Put("/api/findmymoney/Incomes/{userId}/{id}")]
    Task<IncomeResponse> UpdateIncomeAsync(Guid userId, Guid id, [Body] UpdateIncomeRequest request);

    /// <summary>
    /// Deletes an income entry permanently.
    /// </summary>
    /// <param name="userId">The user ID from authentication</param>
    /// <param name="id">The income ID to delete</param>
    [Delete("/api/findmymoney/Incomes/{userId}/{id}")]
    Task DeleteIncomeAsync(Guid userId, Guid id);
}












