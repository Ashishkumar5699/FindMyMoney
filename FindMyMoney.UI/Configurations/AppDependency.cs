using FindMyMoney.Application.Configurations;
using FindMyMoney.Domain.IService;
using FindMyMoney.Helpers;
using FindMyMoney.Presentations.AddExpense;
using FindMyMoney.Presentations.Dashboard;
using FindMyMoney.Presentations.Login;
using FindMyMoney.UI.Presentations.Login;
using FindMyMoney.UI.Services;
using FindMyMoney.UI.ViewModels;

namespace FindMyMoney.Configurations;

public static class AppDependency
{
    public static IServiceCollection RegisterUIs(this IServiceCollection services, string apiBaseUrl)
    {
        // Register Platform-specific Services
        services.AddSingleton<ITokenService, TokenService>();
        services.AddSingleton<IDialogService, DialogService>();
        services.AddSingleton<NavigationService>();

        // Register ViewModels
        services.AddTransient<LoginViewModel>();
        services.AddTransient<DashboardPageViewModel>();
        services.AddTransient<AddExpenseViewModel>();

        // Register Pages
        services.AddSingleton<LoginPage>();
        services.AddTransient<DashboardPage>();
        services.AddTransient<AddExpensePage>();

        // Register Application layer dependencies with API base URL
        services.RegisterApplication(apiBaseUrl);

        return services;
    }
}
