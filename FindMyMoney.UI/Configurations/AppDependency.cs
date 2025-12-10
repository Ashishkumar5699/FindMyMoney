using FindMyMoney.Application.Configurations;
using FindMyMoney.Helpers;
using FindMyMoney.Views;

namespace FindMyMoney.Configurations;

public static class AppDependency
{
    public static IServiceCollection RegisterUIs(this IServiceCollection services)
    {

		services.AddSingleton<NavigationService>();

        // builder.Services.AddSingleton<ApiService>();
        // builder.Services.AddSingleton<AuthService>();

        // builder.Services.AddSingleton<HomeViewModel>();
        services.AddSingleton<LoginPage>();
        services.AddSingleton<HomePage>();

        // Register Views here

        // Register Application layer dependencies
        services.RegisterApplication();

        return services;
    }
}
