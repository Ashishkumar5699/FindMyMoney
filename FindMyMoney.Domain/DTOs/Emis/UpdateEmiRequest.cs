namespace FindMyMoney.Domain.DTOs.Emis;

public class UpdateEmiRequest
{
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
}
