using System.ComponentModel.DataAnnotations;

namespace FindMyMoney.Infrastructure.Local.Entities;

public class LocalUser
{
    [Key]
    public Guid Id { get; set; }
    public string Username { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string Token { get; set; } = string.Empty;
    public DateTime TokenExpiresAt { get; set; }
    public DateTime LastLoginAt { get; set; }
}
