using FindMyMoney.Domain.Common;

namespace FindMyMoney.Application.Queries;

// Query - Represents the request to get financial summary
public class GetFinancialSummaryQuery
{
    public int UserId { get; set; }
    
    public DateTime? StartDate { get; set; }
    
    public DateTime? EndDate { get; set; }
}

// DTO - Data Transfer Object for financial summary
public class FinancialSummaryDto
{
    public decimal TotalIncome { get; set; }
    
    public decimal TotalExpenses { get; set; }
    
    public decimal Balance { get; set; }
    
    public DateTime? PeriodStart { get; set; }
    
    public DateTime? PeriodEnd { get; set; }
}

// Query Handler - Handles the data retrieval and calculation
public interface IGetFinancialSummaryQueryHandler
{
    Task<Result<FinancialSummaryDto>> HandleAsync(GetFinancialSummaryQuery query);
}
