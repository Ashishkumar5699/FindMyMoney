namespace FindMyMoney.Domain.DTOs.Emis;

public class EmiResponse
{
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
    public string LoanName { get; set; } = string.Empty;
    public string BankName { get; set; } = string.Empty;
    public double TotalAmount { get; set; }
    public double EmiAmount { get; set; }
    public int TotalEmis { get; set; }
    public int PaidEmis { get; set; }
    public int RemainingEmis { get; set; }
    public double InterestRate { get; set; }
    public DateTime StartDate { get; set; }
    public DateTime NextDueDate { get; set; }
    public string Status { get; set; } = "Active";
    public string? Description { get; set; }
    public DateTime CreatedAt { get; set; }
    public double RemainingAmount { get; set; }
}
