using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Auth;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Infrastructure.Repositories;

public class UserRepository(
    IRegisterApiService registerApiService,
    ILoginApiService loginApiService,
    ITokenService tokenService,
    ILogger<UserRepository> logger) : IUserRepository
{
    public async Task<Result<User>> RegisterAsync(RegisterRequest request)
    {
        try
        {
            logger.LogInformation("Calling register API for {Username}", request.Username);
            var apiResponse = await registerApiService.RegisterAsync(request);

            logger.LogInformation("Register API raw response: HasErrors={HasErrors} Message={Message} DataIsNull={DataIsNull}",
                apiResponse?.HasErrors, apiResponse?.Message, apiResponse?.Data == null);

            if (apiResponse == null)
                return Result<User>.Failure("No response from server");

            if (apiResponse.HasErrors || apiResponse.Data == null)
                return Result<User>.Failure(apiResponse.Message ?? "Registration failed");

            logger.LogInformation("Register success: Token={TokenLen} chars, Username={Username}",
                apiResponse.Data.Token.Length, apiResponse.Data.Username);

            await tokenService.SaveTokenAsync(apiResponse.Data.Token);

            return Result<User>.Success(new User
            {
                Id = Guid.NewGuid(),
                Username = apiResponse.Data.Username,
                Email = apiResponse.Data.Email,
                CreatedAt = DateTime.UtcNow,
                IsActive = true
            });
        }
        catch (Refit.ApiException apiEx)
        {
            logger.LogError(apiEx, "API error during registration: {StatusCode} {Content}", apiEx.StatusCode, apiEx.Content);
            return Result<User>.Failure($"Registration failed ({(int)apiEx.StatusCode}): {apiEx.Content ?? apiEx.Message}");
        }
        catch (Exception ex)
        {
            logger.LogError(ex, "Error during registration: {Type} {Message}", ex.GetType().Name, ex.Message);
            return Result<User>.Failure($"An error occurred: {ex.GetType().Name} - {ex.Message}");
        }
    }

    public async Task<Result<User>> LoginAsync(string username, string password)
    {
        try
        {
            logger.LogInformation("Calling login API for {Username}", username);
            var apiResponse = await loginApiService.LoginAsync(new LoginRequest { Username = username, Password = password });

            logger.LogInformation("Login API raw response: HasErrors={HasErrors} Message={Message} DataIsNull={DataIsNull}",
                apiResponse?.HasErrors, apiResponse?.Message, apiResponse?.Data == null);

            if (apiResponse == null)
                return Result<User>.Failure("No response from server");

            if (apiResponse.HasErrors || apiResponse.Data == null)
                return Result<User>.Failure(apiResponse.Message ?? "Login failed");

            await tokenService.SaveTokenAsync(apiResponse.Data.Token);

            return Result<User>.Success(new User
            {
                Username = apiResponse.Data.Username,
                Email = apiResponse.Data.Email,
                CreatedAt = DateTime.UtcNow,
                LastLoginAt = DateTime.UtcNow,
                IsActive = true
            });
        }
        catch (Refit.ApiException apiEx)
        {
            logger.LogError(apiEx, "API error during login: {StatusCode} {Content}", apiEx.StatusCode, apiEx.Content);
            return Result<User>.Failure($"Login failed ({(int)apiEx.StatusCode}): {apiEx.Content ?? apiEx.Message}");
        }
        catch (Exception ex)
        {
            logger.LogError(ex, "Error during login: {Type} {Message}", ex.GetType().Name, ex.Message);
            return Result<User>.Failure($"An error occurred: {ex.GetType().Name} - {ex.Message}");
        }
    }

    public async Task<Result<User>> ValidateTokenAsync(ValidateTokenRequest request)
    {
        try
        {
            await loginApiService.ValidateTokenAsync(request);
            return Result<User>.Success(new User());
        }
        catch (Exception ex)
        {
            logger.LogError(ex, "Error validating token");
            return Result<User>.Failure(ex.Message);
        }
    }

    public Task<Result<User>> GetByIdAsync(Guid userId) => Task.FromResult(Result<User>.Failure("Not implemented"));
    public Task<Result<User>> GetByUsernameAsync(string username) => Task.FromResult(Result<User>.Failure("Not implemented"));
    public Task<Result<User>> CreateAsync(User user) => Task.FromResult(Result<User>.Failure("Not implemented"));
    public Task<Result> UpdateAsync(User user) => Task.FromResult(Result.Failure("Not implemented"));
    public Task<Result> DeleteAsync(Guid userId) => Task.FromResult(Result.Failure("Not implemented"));
}
