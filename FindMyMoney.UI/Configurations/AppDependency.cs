using FindMyMoney.Application.Configurations;
using FindMyMoney.Domain.IService;
using FindMyMoney.Helpers;
using FindMyMoney.Presentations.Login;
using FindMyMoney.UI.Presentations.Login;
using FindMyMoney.UI.Services;
using FindMyMoney.UI.ViewModels;
using FindMyMoney.Views;

namespace FindMyMoney.Configurations;

public static class AppDependency
{
    public static IServiceCollection RegisterUIs(this IServiceCollection services, string apiBaseUrl)
    {
        // Register Platform-specific Services
        services.AddSingleton<ITokenService, TokenService>();
        services.AddSingleton<NavigationService>();

        // Register ViewModels
        services.AddTransient<LoginViewModel>();
        services.AddTransient<HomeViewModel>();

        // Register Pages
        services.AddSingleton<LoginPage>();
        services.AddSingleton<HomePage>();

        // Register Application layer dependencies with API base URL
        services.RegisterApplication(apiBaseUrl);

        return services;
    }
}
