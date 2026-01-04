using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Application.Commands;

// Command - Represents the request to create an income
public class CreateIncomeCommand
{
    public int UserId { get; set; }
    public decimal Amount { get; set; }
    public string Source { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime Date { get; set; }
}

// Command Handler - Handles the business logic for creating an income
public interface ICreateIncomeCommandHandler
{
    Task<Result<Income>> HandleAsync(CreateIncomeCommand command);
}
