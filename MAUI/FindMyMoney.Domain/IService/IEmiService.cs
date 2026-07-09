using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.IService;

public interface IEmiService
{
    Task<Result<Emi>> GetByIdAsync(Guid emiId);
    Task<Result<List<Emi>>> GetEmisAsync(string? status = null);
    Task<Result<Emi>> CreateEmiAsync(Emi emi);
    Task<Result> UpdateEmiAsync(Emi emi);
    Task<Result> DeleteEmiAsync(Guid emiId);
}
