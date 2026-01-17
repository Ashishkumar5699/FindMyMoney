namespace FindMyMoney.Domain.DTOs.Expenses;

public class CreateExpenseRequest
{
    public double Amount { get; set; }

    public string? Category { get; set; }

    public string? Description { get; set; }

    public DateTime Date { get; set; }
}
