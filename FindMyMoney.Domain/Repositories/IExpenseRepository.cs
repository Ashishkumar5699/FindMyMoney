using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.Repositories;

public interface IExpenseRepository
{
    Task<Result<Expense>> GetByIdAsync(Guid userId, Guid expenseId);
    
    Task<Result<List<Expense>>> GetByUserIdAsync(Guid userId);
    
    Task<Result<List<Expense>>> GetByDateRangeAsync(Guid userId, DateTime startDate, DateTime endDate);
    
    Task<Result<Expense>> CreateAsync(Expense expense);
    
    Task<Result> UpdateAsync(Expense expense);
    
    Task<Result> DeleteAsync(Guid userId, Guid expenseId);
    
    Task<Result<decimal>> GetTotalExpensesByUserAsync(Guid userId, DateTime? startDate = null, DateTime? endDate = null);
}
