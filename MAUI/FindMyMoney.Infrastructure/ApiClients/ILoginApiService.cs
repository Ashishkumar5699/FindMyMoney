using FindMyMoney.Domain.DTOs;
using FindMyMoney.Domain.DTOs.Auth;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

public interface ILoginApiService
{
    [Post("/api/findmymoney/Auth/login")]
    Task<LoginApiResult> LoginAsync([Body] LoginRequest request);

    [Post("/api/findmymoney/Auth/validate-token")]
    Task<ValidateTokenResponse> ValidateTokenAsync([Body] ValidateTokenRequest request);
}
