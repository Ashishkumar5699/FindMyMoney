using FindMyMoney.Application.DTOs.Auth;
using FindMyMoney.Domain.Models;
using Refit;

namespace FindMyMoney.Application.Services;

public interface IAuthApiService
{
    [Post("/Auth/register")]
    Task<RegisterResponse> RegisterAsync([Body] RegisterRequest request);

    [Post("/Auth/login")]
    Task<LoginResponse> LoginAsync([Body] LoginRequest request);

    [Get("/Auth/me")]
    Task<User> GetCurrentUserAsync([Header("Authorization")] string authorization);

    [Post("/Auth/validate-token")]
    Task<ValidateTokenResponse> ValidateTokenAsync([Body] ValidateTokenRequest request);
}
