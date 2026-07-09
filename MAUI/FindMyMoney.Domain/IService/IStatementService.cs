using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.IService;

public interface IStatementService
{
    Task<Result<StatementSummary>> GetStatementAsync(int month, int year);
}
