using FindMyMoney.Application.DTOs;

namespace FindMyMoney.Domain.DTOs.Auth;

public class LoginResponse
{
    public string Token { get; set; } = string.Empty;

    public UserDto User { get; set; } = new();

    public DateTime ExpiresAt { get; set; }
}
