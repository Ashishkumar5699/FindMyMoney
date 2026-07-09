using FindMyMoney.Application.Configurations;
using FindMyMoney.Domain.IService;
using FindMyMoney.Helpers;
using FindMyMoney.Presentations.AddExpense;
using FindMyMoney.Presentations.AddIncome;
using FindMyMoney.Presentations.Dashboard;
using FindMyMoney.Presentations.Emis;
using FindMyMoney.Presentations.Expenses;
using FindMyMoney.Presentations.Incomes;
using FindMyMoney.Presentations.Login;
using FindMyMoney.UI.Presentations.Login;
using FindMyMoney.UI.Presentations.Register;
using FindMyMoney.UI.Services;
using FindMyMoney.UI.ViewModels;

namespace FindMyMoney.Configurations;

public static class AppDependency
{
    public static IServiceCollection RegisterUIs(this IServiceCollection services, string apiBaseUrl)
    {
        // Platform services
        services.AddSingleton<ITokenService, TokenService>();
        services.AddSingleton<IDialogService, DialogService>();
        services.AddSingleton<NavigationService>();

        // ViewModels
        services.AddTransient<LoginViewModel>();
        services.AddTransient<RegisterViewModel>();
        services.AddTransient<DashboardPageViewModel>();
        services.AddTransient<AddExpenseViewModel>();
        services.AddTransient<AddIncomeViewModel>();
        services.AddTransient<ExpensesViewModel>();
        services.AddTransient<IncomesViewModel>();
        services.AddTransient<EmisViewModel>();
        services.AddTransient<AddEmiViewModel>();

        // Pages
        services.AddSingleton<LoginPage>();
        services.AddTransient<RegisterPage>();
        services.AddTransient<DashboardPage>();
        services.AddTransient<AddExpensePage>();
        services.AddTransient<AddIncomePage>();
        services.AddTransient<ExpensesPage>();
        services.AddTransient<IncomesPage>();
        services.AddTransient<EmisPage>();
        services.AddTransient<AddEmiPage>();

        // Application + Infrastructure
        services.RegisterApplication(apiBaseUrl);

        return services;
    }
}
