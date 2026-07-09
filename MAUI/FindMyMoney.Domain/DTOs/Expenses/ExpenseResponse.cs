namespace FindMyMoney.Domain.DTOs.Expenses;

public class ExpenseResponse
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public double Amount { get; set; }

    public string? Category { get; set; }

    public string? Description { get; set; }

    public DateTime Date { get; set; }

    public DateTime CreatedAt { get; set; }

    public DateTime? UpdatedAt { get; set; }
}
