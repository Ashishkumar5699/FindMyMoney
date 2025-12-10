using System;
using FindMyMoney.Domain.IService;

namespace FindMyMoney.Infrastructure.Services;

public class AuthService : IAuthService
{
    public Task LoginAsync(string username, string password)
    {
        throw new NotImplementedException();
    }
}
