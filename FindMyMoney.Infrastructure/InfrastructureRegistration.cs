using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Repositories;
using Microsoft.Extensions.DependencyInjection;
using Refit;

namespace FindMyMoney.Infrastructure;

public static class InfrastructureRegistration
{
    public static IServiceCollection AddInfrastructure(this IServiceCollection services, string apiBaseUrl)
    {
        // Register AutoMapper
        services.AddAutoMapper(typeof(InfrastructureRegistration).Assembly);

        // Register Repositories (Scoped for better lifecycle management)
        services.AddScoped<IUserRepository, UserRepository>();

        services.AddScoped<IExpenseRepository, ExpenseRepository>();

        services.AddScoped<IIncomeRepository, IncomeRepository>();

        // Note: AuthService is now registered in Application layer
        // as it depends on API services
        services.RegisterInfrastructureRefit(apiBaseUrl);
        return services;
    }

    public static IServiceCollection RegisterInfrastructureRefit(this IServiceCollection services, string apiBaseUrl)
    {
        // Register Authentication API Clients
        services.AddRefitClient<ILoginApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl));

        services.AddRefitClient<IRegisterApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl));

        services.AddRefitClient<IUserApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl));

        // Register Expense API Client
        services.AddRefitClient<IExpenseRESTRepository>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl));

        // Register Income API Client
        services.AddRefitClient<IIncomeRESTRepository>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl));

        return services;
    }
}
