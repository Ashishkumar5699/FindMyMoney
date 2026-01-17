using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.Repositories;

public interface IIncomeRepository
{
    Task<Result<Income>> GetByIdAsync(Guid userId, Guid incomeId);
    
    Task<Result<List<Income>>> GetByUserIdAsync(Guid userId);
    
    Task<Result<List<Income>>> GetByDateRangeAsync(Guid userId, DateTime startDate, DateTime endDate);
    
    Task<Result<Income>> CreateAsync(Income income);
    
    Task<Result> UpdateAsync(Income income);
    
    Task<Result> DeleteAsync(Guid userId, Guid incomeId);
    
    Task<Result<decimal>> GetTotalIncomeByUserAsync(Guid userId, DateTime? startDate = null, DateTime? endDate = null);
}
