namespace FindMyMoney.Domain.DTOs.Expenses;

public class UpdateExpenseRequest
{
    public double Amount { get; set; }

    public string? Category { get; set; }

    public string? Description { get; set; }

    public DateTime Date { get; set; }
}
