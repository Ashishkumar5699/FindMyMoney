namespace FindMyMoney.Application.DTOs.Auth;

public class LoginResponse
{
    public string Token { get; set; } = string.Empty;

    public UserDto User { get; set; } = new();

    public DateTime ExpiresAt { get; set; }
}
