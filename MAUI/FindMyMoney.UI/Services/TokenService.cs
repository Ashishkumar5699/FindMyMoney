using FindMyMoney.Domain.IService;
using System.Text;
using System.Text.Json;

namespace FindMyMoney.UI.Services;

public class TokenService : ITokenService
{
    private const string TokenKey = "auth_token";
    private const string UsernameKey = "auth_username";
    private const string UserIdKey = "auth_user_id";

    public async Task SaveTokenAsync(string token)
    {
        await SecureStorage.SetAsync(TokenKey, token);
        ExtractAndSaveClaims(token);
    }

    public async Task<string?> GetTokenAsync() =>
        await SecureStorage.GetAsync(TokenKey);

    public Task ClearTokenAsync()
    {
        SecureStorage.Remove(TokenKey);
        Preferences.Default.Remove(UsernameKey);
        Preferences.Default.Remove(UserIdKey);
        return Task.CompletedTask;
    }

    public async Task<bool> HasTokenAsync() =>
        !string.IsNullOrEmpty(await GetTokenAsync());

    public Task<string?> GetCurrentUsernameAsync() =>
        Task.FromResult<string?>(Preferences.Default.Get<string>(UsernameKey, string.Empty) is { Length: > 0 } u ? u : null);

    public Task<Guid> GetCurrentUserIdAsync()
    {
        var raw = Preferences.Default.Get<string>(UserIdKey, string.Empty);
        return Task.FromResult(Guid.TryParse(raw, out var id) ? id : Guid.Empty);
    }

    // Decodes the JWT payload (no library needed) and persists username + userId to Preferences
    private static void ExtractAndSaveClaims(string token)
    {
        try
        {
            var parts = token.Split('.');
            if (parts.Length < 2) return;

            var payload = parts[1];
            payload = payload.PadRight(payload.Length + (4 - payload.Length % 4) % 4, '=');
            var json = Encoding.UTF8.GetString(Convert.FromBase64String(payload));
            using var doc = JsonDocument.Parse(json);
            var root = doc.RootElement;

            if (root.TryGetProperty("unique_name", out var name))
                Preferences.Default.Set(UsernameKey, name.GetString() ?? string.Empty);

            if (root.TryGetProperty("nameid", out var id))
                Preferences.Default.Set(UserIdKey, id.GetString() ?? string.Empty);
        }
        catch { /* malformed token — ignore */ }
    }
}
