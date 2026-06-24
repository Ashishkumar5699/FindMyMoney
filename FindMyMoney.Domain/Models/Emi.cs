namespace FindMyMoney.Domain.Models;

public class Emi
{
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
    public string LoanName { get; set; } = string.Empty;
    public string BankName { get; set; } = string.Empty;
    public decimal TotalAmount { get; set; }
    public decimal EmiAmount { get; set; }
    public int TotalEmis { get; set; }
    public int PaidEmis { get; set; }
    public decimal InterestRate { get; set; }
    public DateTime StartDate { get; set; }
    public DateTime NextDueDate { get; set; }
    public string Status { get; set; } = "Active";
    public string? Description { get; set; }
    public DateTime CreatedAt { get; set; }

    public int RemainingEmis => TotalEmis - PaidEmis;
    public decimal RemainingAmount => EmiAmount * RemainingEmis;
    public decimal PaidAmount => EmiAmount * PaidEmis;
    public double ProgressRatio => TotalEmis > 0 ? (double)PaidEmis / TotalEmis : 0;
}
