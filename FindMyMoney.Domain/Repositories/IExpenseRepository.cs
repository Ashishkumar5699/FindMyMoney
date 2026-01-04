using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.Repositories;

public interface IExpenseRepository
{
    Task<Result<Expense>> GetByIdAsync(int expenseId);
    
    Task<Result<List<Expense>>> GetByUserIdAsync(int userId);
    
    Task<Result<List<Expense>>> GetByDateRangeAsync(int userId, DateTime startDate, DateTime endDate);
    
    Task<Result<Expense>> CreateAsync(Expense expense);
    
    Task<Result> UpdateAsync(Expense expense);
    
    Task<Result> DeleteAsync(int expenseId);
    
    Task<Result<decimal>> GetTotalExpensesByUserAsync(int userId, DateTime? startDate = null, DateTime? endDate = null);
}
