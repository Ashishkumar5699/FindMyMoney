using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.UI.Presentations.Login;

/// <summary>
/// ViewModel for the Login page.
/// Handles user authentication and login flow.
/// </summary>
public partial class LoginViewModel : BaseViewModel
{
    private readonly IAuthService _authService;
    private readonly ILogger<LoginViewModel> _logger;

    /// <summary>
    /// Gets or sets the username entered by the user
    /// </summary>
    [ObservableProperty]
    string username = string.Empty;

    /// <summary>
    /// Gets or sets the password entered by the user
    /// </summary>
    [ObservableProperty]
    string password = string.Empty;

    /// <summary>
    /// Gets or sets the error message to display to the user when login fails
    /// </summary>
    [ObservableProperty]
    string errorMessage = string.Empty;

    /// <summary>
    /// Initializes a new instance of the <see cref="LoginViewModel"/> class
    /// </summary>
    /// <param name="authService">The authentication service for handling login</param>
    /// <param name="logger">The logger for tracking login operations</param>
    public LoginViewModel(IAuthService authService, ILogger<LoginViewModel> logger)
    {
        _authService = authService;
        _logger = logger;
        Title = "Login";
    }

    /// <summary>
    /// Handles the login command when the user attempts to authenticate.
    /// Validates credentials and navigates to the main page on success.
    /// </summary>
    [RelayCommand]
    private async Task Login()
    {
        if (IsBusy)
            return;

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            Username = "ashish";
            
            Password = "ashish12345";

            var result = await _authService.LoginAsync(Username, Password);

            if (result.IsSuccess)
            {
                _logger.LogInformation("Login successful for user: {Username}", Username);
                // Navigate to main page (AppShell)
                var window = Microsoft.Maui.Controls.Application.Current?.Windows[0];
                
                if (window != null)
                {
                    window.Page = new AppShell();
                }
            }
            else
            {
                ErrorMessage = result.Error;
                _logger.LogWarning("Login failed: {Error}", result.Error);
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = "An unexpected error occurred";
            _logger.LogError(ex, "Unexpected error during login");
        }
        finally
        {
            IsBusy = false;
        }
    }
}
