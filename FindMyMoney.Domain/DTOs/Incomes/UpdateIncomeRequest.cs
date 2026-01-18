namespace FindMyMoney.Domain.DTOs.Incomes;

public class UpdateIncomeRequest
{
    public double Amount { get; set; }

    public string? Source { get; set; }

    public string? Description { get; set; }

    public DateTime Date { get; set; }
}
