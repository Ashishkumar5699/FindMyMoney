namespace FindMyMoney.Domain.IService;

public interface ITokenService
{
    Task SaveTokenAsync(string token);
    Task<string?> GetTokenAsync();
    Task ClearTokenAsync();
    Task<bool> HasTokenAsync();
}
