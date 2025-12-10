using System;

namespace FindMyMoney.Domain.IService;

public interface IAuthService
{
    Task LoginAsync(string username, string password);
}
