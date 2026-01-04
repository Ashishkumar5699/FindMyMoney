namespace FindMyMoney.Application.DTOs.Auth;

public class ValidateTokenResponse
{
    public bool IsValid { get; set; }

    public UserDto? User { get; set; }

    public DateTime? ExpiresAt { get; set; }
}
