using FindMyMoney.Domain.DTOs;
using FindMyMoney.Domain.DTOs.Auth;
using Refit;

namespace FindMyMoney.Infrastructure.ApiClients;

public interface IRegisterApiService
{
    [Post("/api/findmymoney/Auth/register")]
    Task<RegisterApiResult> RegisterAsync([Body] RegisterRequest request);
}
