using System.ComponentModel.DataAnnotations;

namespace FindMyMoney.Infrastructure.Local.Entities;

public class LocalExpense
{
    [Key]
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
    public decimal Amount { get; set; }
    public string Category { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public DateTime Date { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime? UpdatedAt { get; set; }
    public SyncStatus SyncStatus { get; set; } = SyncStatus.Synced;
}
