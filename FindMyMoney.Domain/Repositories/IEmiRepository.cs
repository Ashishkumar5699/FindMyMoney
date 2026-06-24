using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.Repositories;

public interface IEmiRepository
{
    Task<Result<Emi>> GetByIdAsync(Guid userId, Guid emiId);
    Task<Result<List<Emi>>> GetByUserIdAsync(Guid userId, string? status = null);
    Task<Result<Emi>> CreateAsync(Emi emi);
    Task<Result> UpdateAsync(Emi emi);
    Task<Result> DeleteAsync(Guid userId, Guid emiId);
}
