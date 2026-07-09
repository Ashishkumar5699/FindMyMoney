namespace FindMyMoney.Domain.DTOs;

public class RegisterApiResult
{
    public RegisterApiResultData? Data { get; set; }
    public bool HasErrors { get; set; }
    public string Message { get; set; } = string.Empty;
}

public class RegisterApiResultData
{
    public string Token { get; set; } = string.Empty;
    public string Username { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public DateTime ExpiresAt { get; set; }
}

public class LoginApiResult
{
    public LoginApiResultData? Data { get; set; }
    public bool HasErrors { get; set; }
    public string Message { get; set; } = string.Empty;
}

public class LoginApiResultData
{
    public string Token { get; set; } = string.Empty;
    public string Username { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public DateTime ExpiresAt { get; set; }
}
