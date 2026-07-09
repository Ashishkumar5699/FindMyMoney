using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.UI.Presentations.Register;

public partial class RegisterViewModel : BaseViewModel
{
    private readonly IAuthService _authService;
    private readonly ILogger<RegisterViewModel> _logger;

    [ObservableProperty]
    string username = string.Empty;

    [ObservableProperty]
    string email = string.Empty;

    [ObservableProperty]
    string password = string.Empty;

    [ObservableProperty]
    string confirmPassword = string.Empty;

    [ObservableProperty]
    string errorMessage = string.Empty;

    [ObservableProperty]
    string successMessage = string.Empty;

    public RegisterViewModel(IAuthService authService, ILogger<RegisterViewModel> logger)
    {
        _authService = authService;
        _logger = logger;
        Title = "Register";
    }

    [RelayCommand]
    private async Task GoToLogin()
    {
        if (Microsoft.Maui.Controls.Application.Current?.Windows[0].Page is NavigationPage navPage)
            await navPage.PopAsync();
    }

    [RelayCommand]
    private async Task Register()
    {
        if (IsBusy)
            return;

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;
            SuccessMessage = string.Empty;

            // Validate inputs
            if (string.IsNullOrWhiteSpace(Username))
            {
                ErrorMessage = "Username is required";
                return;
            }

            if (string.IsNullOrWhiteSpace(Email))
            {
                ErrorMessage = "Email is required";
                return;
            }

            if (string.IsNullOrWhiteSpace(Password))
            {
                ErrorMessage = "Password is required";
                return;
            }

            if (Password != ConfirmPassword)
            {
                ErrorMessage = "Passwords do not match";
                return;
            }

            var result = await _authService.RegisterAsync(Username, Email, Password);

            if (result.IsSuccess)
            {
                _logger.LogInformation("Registration successful for user: {Username}", Username);
                SuccessMessage = "Registration successful! Redirecting to login...";

                await Task.Delay(1500);
                if (Microsoft.Maui.Controls.Application.Current?.Windows[0].Page is NavigationPage navPage)
                    await navPage.PopAsync();
            }
            else
            {
                ErrorMessage = result.Error;
                _logger.LogWarning("Registration failed: {Error}", result.Error);
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = "An unexpected error occurred";
            _logger.LogError(ex, "Unexpected error during registration");
        }
        finally
        {
            IsBusy = false;
        }
    }
}
