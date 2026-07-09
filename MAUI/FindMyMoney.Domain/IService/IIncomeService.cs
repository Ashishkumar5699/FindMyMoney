using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.IService;

/// <summary>
/// Service interface for income operations
/// </summary>
public interface IIncomeService
{
    /// <summary>
    /// Gets an income by ID
    /// </summary>
    Task<Result<Income>> GetByIdAsync(Guid incomeId);

    /// <summary>
    /// Gets all incomes for the current user
    /// </summary>
    Task<Result<List<Income>>> GetIncomesAsync();

    /// <summary>
    /// Gets incomes for the current user within a date range
    /// </summary>
    Task<Result<List<Income>>> GetIncomesByDateRangeAsync(DateTime startDate, DateTime endDate);

    /// <summary>
    /// Creates a new income for the current user
    /// </summary>
    Task<Result<Income>> CreateIncomeAsync(Income income);

    /// <summary>
    /// Updates an existing income
    /// </summary>
    Task<Result> UpdateIncomeAsync(Income income);

    /// <summary>
    /// Deletes an income
    /// </summary>
    Task<Result> DeleteIncomeAsync(Guid incomeId);

    /// <summary>
    /// Gets total income for the current user
    /// </summary>
    Task<Result<decimal>> GetTotalIncomeAsync(DateTime? startDate = null, DateTime? endDate = null);
}
