using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.UI.Presentations.Login;

public partial class LoginViewModel : BaseViewModel
{
    private readonly IAuthService _authService;
    private readonly ILogger<LoginViewModel> _logger;

    [ObservableProperty]
    string username = string.Empty;

    [ObservableProperty]
    string password = string.Empty;

    [ObservableProperty]
    string errorMessage = string.Empty;

    public LoginViewModel(IAuthService authService, ILogger<LoginViewModel> logger)
    {
        _authService = authService;
        _logger = logger;
        Title = "Login";
    }

    [RelayCommand]
    private async Task Login()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            if (string.IsNullOrWhiteSpace(Username) || string.IsNullOrWhiteSpace(Password))
            {
                ErrorMessage = "Please enter your username and password";
                return;
            }

            var result = await _authService.LoginAsync(Username, Password);

            if (result.IsSuccess)
            {
                _logger.LogInformation("Login successful for user: {Username}", Username);
                await MainThread.InvokeOnMainThreadAsync(() =>
                {
                    var window = Microsoft.Maui.Controls.Application.Current?.Windows[0];
                    if (window != null)
                        window.Page = new AppShell();
                });
            }
            else
            {
                ErrorMessage = result.Error ?? "Login failed. Please check your credentials.";
                _logger.LogWarning("Login failed: {Error}", result.Error);
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = "An unexpected error occurred. Please try again.";
            _logger.LogError(ex, "Unexpected error during login");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task GoToRegister()
    {
        _logger.LogInformation("Navigate to Register page");
        if (Microsoft.Maui.Controls.Application.Current?.Windows[0].Page is NavigationPage navPage)
        {
            var registerPage = IPlatformApplication.Current?.Services.GetService<FindMyMoney.UI.Presentations.Register.RegisterPage>();
            if (registerPage != null)
                await navPage.PushAsync(registerPage);
        }
    }
}
