using FindMyMoney.Domain.IService;

namespace FindMyMoney.UI.Services;

public class TokenService : ITokenService
{
    private const string TokenKey = "auth_token";

    public async Task SaveTokenAsync(string token)
    {
        await SecureStorage.SetAsync(TokenKey, token);
    }

    public async Task<string?> GetTokenAsync()
    {
        return await SecureStorage.GetAsync(TokenKey);
    }

    public async Task ClearTokenAsync()
    {
        SecureStorage.Remove(TokenKey);
        await Task.CompletedTask;
    }

    public async Task<bool> HasTokenAsync()
    {
        var token = await GetTokenAsync();
        return !string.IsNullOrEmpty(token);
    }
}
