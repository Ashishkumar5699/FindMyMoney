using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.Models;

namespace FindMyMoney.Domain.IService;

public interface IAuthService
{
    Task<Result<User>> LoginAsync(string username, string password);

    Task<Result> LogoutAsync();

    Task<Result<User>> RegisterAsync(string username, string email, string password);

    Task<Result<User>> GetCurrentUserAsync();

    Task<Result<bool>> ValidateTokenAsync();

    Task<bool> IsAuthenticatedAsync();
}
