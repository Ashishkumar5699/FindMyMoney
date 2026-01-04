using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.Repositories;

public interface IIncomeRepository
{
    Task<Result<Income>> GetByIdAsync(int incomeId);
    
    Task<Result<List<Income>>> GetByUserIdAsync(int userId);
    
    Task<Result<List<Income>>> GetByDateRangeAsync(int userId, DateTime startDate, DateTime endDate);
    
    Task<Result<Income>> CreateAsync(Income income);
    
    Task<Result> UpdateAsync(Income income);
    
    Task<Result> DeleteAsync(int incomeId);
    
    Task<Result<decimal>> GetTotalIncomeByUserAsync(int userId, DateTime? startDate = null, DateTime? endDate = null);
}
