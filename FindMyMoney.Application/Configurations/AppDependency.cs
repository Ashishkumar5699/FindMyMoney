using FindMyMoney.Application.ViewModels;
using Microsoft.Extensions.DependencyInjection;

namespace FindMyMoney.Application.Configurations;

public static class AppDependency
{
    public static IServiceCollection RegisterApplication(this IServiceCollection services)
    {
        // Register ViewModels
        services.AddSingleton<LoginViewModel>();
        services.AddSingleton<HomeViewModel>();

        return services;
    }
}
