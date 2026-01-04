using FindMyMoney.Application.Services;
using FindMyMoney.Domain.IService;
using FindMyMoney.Infrastructure;
using Microsoft.Extensions.DependencyInjection;
using Refit;

namespace FindMyMoney.Application.Configurations;

public static class ApplicationRegistration
{
    public static IServiceCollection RegisterApplication(this IServiceCollection services, string apiBaseUrl)
    {
        // Register Application layer services (Use Cases, Commands, Queries)
        // TODO: Add Command and Query handlers here when implementing CQRS

        // Register Auth Service
        services.AddScoped<IAuthService, AuthService>();

        // Register Refit API Client
        services.AddRefitClient<IAuthApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl));

        // Register Infrastructure layer
        services.AddInfrastructure();

        return services;
    }
}
