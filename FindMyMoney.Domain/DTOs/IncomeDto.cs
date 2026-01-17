namespace FindMyMoney.Application.DTOs;

public class IncomeDto
{
    public Guid Id { get; set; }
    
    public Guid UserId { get; set; }
    
    public decimal Amount { get; set; }
    
    public string Source { get; set; } = string.Empty;
    
    public string Description { get; set; } = string.Empty;
    
    public DateTime Date { get; set; }
}
