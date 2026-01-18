using FindMyMoney.Application.DTOs;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.DTOs.Auth;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

public class AuthService : IAuthService
{
    private readonly IUserRepository _authApiService;
    private readonly ITokenService _tokenService;
    private readonly ILogger<AuthService> _logger;

    public AuthService(
        IUserRepository authApiService,
        ITokenService tokenService,
        ILogger<AuthService> logger)
    {
        _authApiService = authApiService;
        _tokenService = tokenService;
        _logger = logger;
    }

    public async Task<Result<User>> LoginAsync(string username, string password)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(username))
            {
                return Result<User>.Failure("Username is required");
            }

            if (string.IsNullOrWhiteSpace(password))
            {
                return Result<User>.Failure("Password is required");
            }

            _logger.LogInformation("Attempting to login user: {Username}", username);

            var request = new LoginRequest
            {
                Username = username,
                Password = password
            };

            var response = await _authApiService.LoginAsync(username, password);

            // Save token
            // await _tokenService.SaveTokenAsync(response.Token);

            _logger.LogInformation("User logged in successfully: {Username}", username);

            // Map response to User entity
            // var user = MapToUser(response.Data);
            var user = response.Data ?? throw new Exception("User data is null");
            
            user.LastLoginAt = DateTime.UtcNow;

            return Result<User>.Success(user);
        }
        catch (Refit.ApiException apiEx)
        {
            _logger.LogError(apiEx, "API error during login for user: {Username}", username);
            return Result<User>.Failure($"Login failed: {apiEx.Message}");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error during login for user: {Username}", username);
            return Result<User>.Failure($"An error occurred during login: {ex.Message}");
        }
    }

    public async Task<Result> LogoutAsync()
    {
        try
        {
            _logger.LogInformation("Logging out user");

            await _tokenService.ClearTokenAsync();

            _logger.LogInformation("User logged out successfully");

            return Result.Success();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error during logout");
            return Result.Failure($"An error occurred during logout: {ex.Message}");
        }
    }

    public async Task<Result<User>> RegisterAsync(string username, string email, string password)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(username))
            {
                return Result<User>.Failure("Username is required");
            }

            if (string.IsNullOrWhiteSpace(email))
            {
                return Result<User>.Failure("Email is required");
            }

            if (string.IsNullOrWhiteSpace(password))
            {
                return Result<User>.Failure("Password is required");
            }

            _logger.LogInformation("Attempting to register user: {Username}", username);

            var request = new RegisterRequest
            {
                Username = username,
                Email = email,
                Password = password
            };

            var response = await _authApiService.RegisterAsync(request);

            // Save token
            // await _tokenService.SaveTokenAsync(response.Token);

            _logger.LogInformation("User registered successfully: {Username}", username);

            // Map response to User entity
            // var user = MapToUser(response.Data)
            var user = response.Data ?? throw new Exception("User data is null");
            return Result<User>.Success(user);
        }
        catch (Refit.ApiException apiEx)
        {
            _logger.LogError(apiEx, "API error during registration for user: {Username}", username);
            return Result<User>.Failure($"Registration failed: {apiEx.Message}");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error during registration for user: {Username}", username);
            return Result<User>.Failure($"An error occurred during registration: {ex.Message}");
        }
    }

    public async Task<Result<User>> GetCurrentUserAsync()
    {
        try
        {
            var token = await _tokenService.GetTokenAsync();

            if (string.IsNullOrEmpty(token))
            {
                return Result<User>.Failure("Not authenticated");
            }

            _logger.LogInformation("Fetching current user profile");

            // TODO: Implement GetCurrentUserAsync in IUserRepository or use appropriate repository method
            // For now, returning a placeholder - you need to add GetCurrentUserAsync(string token) to IUserRepository
            throw new NotImplementedException("GetCurrentUserAsync needs to be implemented in IUserRepository");

            // var user = await _authApiService.GetCurrentUserAsync($"Bearer {token}");

            // _logger.LogInformation("Current user fetched successfully: {Username}", user.Username);

            // return Result<User>.Success(user);
        }
        catch (Refit.ApiException apiEx)
        {
            _logger.LogError(apiEx, "API error fetching current user");

            // If unauthorized, clear the token
            if (apiEx.StatusCode == System.Net.HttpStatusCode.Unauthorized)
            {
                await _tokenService.ClearTokenAsync();
            }

            return Result<User>.Failure($"Failed to fetch current user: {apiEx.Message}");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error fetching current user");
            return Result<User>.Failure($"An error occurred: {ex.Message}");
        }
    }

    public async Task<Result<bool>> ValidateTokenAsync()
    {
        try
        {
            var token = await _tokenService.GetTokenAsync();

            if (string.IsNullOrEmpty(token))
            {
                return Result<bool>.Success(false);
            }

            _logger.LogInformation("Validating token");

            var request = new ValidateTokenRequest { Token = token };

            var response = await _authApiService.ValidateTokenAsync(request);

            // if (!response.IsValid)
            // {
            //     await _tokenService.ClearTokenAsync();
            // }

            _logger.LogInformation("Token validation result: {IsValid}");//, response.IsValid);

            return Result<bool>.Success(true);//response.IsValid);
        }
        catch (Refit.ApiException apiEx)
        {
            _logger.LogError(apiEx, "API error validating token");
            await _tokenService.ClearTokenAsync();
            return Result<bool>.Success(false);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error validating token");
            return Result<bool>.Success(false);
        }
    }

    public async Task<bool> IsAuthenticatedAsync()
    {
        try
        {
            var hasToken = await _tokenService.HasTokenAsync();

            if (!hasToken)
            {
                return false;
            }

            var validationResult = await ValidateTokenAsync();
            return validationResult.IsSuccess && validationResult.Data;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error checking authentication status");
            return false;
        }
    }

    private static User MapToUser(UserDto dto)
    {
        return new User
        {
            Id = dto.Id,
            Username = dto.Username,
            Email = dto.Email,
            CreatedAt = dto.CreatedAt,
            LastLoginAt = dto.LastLoginAt,
            IsActive = dto.IsActive,
            PasswordHash = string.Empty // Don't expose password hash
        };
    }
}
