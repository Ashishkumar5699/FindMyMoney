using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Application.Queries;

// Query - Represents the request to get incomes
public class GetIncomesQuery
{
    public int UserId { get; set; }
    
    public DateTime? StartDate { get; set; }
    
    public DateTime? EndDate { get; set; }
}

// Query Handler - Handles the data retrieval
public interface IGetIncomesQueryHandler
{
    Task<Result<List<Income>>> HandleAsync(GetIncomesQuery query);
}
