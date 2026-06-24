using FindMyMoney.Domain.IService;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

public class UserService : IUserService
{
    private readonly ITokenService _tokenService;
    private readonly ILogger<UserService> _logger;

    public UserService(ITokenService tokenService, ILogger<UserService> logger)
    {
        _tokenService = tokenService;
        _logger = logger;
    }

    public async Task<Guid> GetCurrentUserIdAsync()
    {
        var id = await _tokenService.GetCurrentUserIdAsync();
        if (id == Guid.Empty)
            _logger.LogWarning("No userId found in stored token claims");
        return id;
    }

    public async Task<string?> GetCurrentUserNameAsync() =>
        await _tokenService.GetCurrentUsernameAsync();
}
