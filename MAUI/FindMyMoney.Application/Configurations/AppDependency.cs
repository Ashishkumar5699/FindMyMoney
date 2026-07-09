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

        // Register User Service
        services.AddScoped<IUserService, UserService>();

        // Register Business Services
        services.AddScoped<IExpenseService, ExpenseService>();
        services.AddScoped<IIncomeService, IncomeService>();
        services.AddScoped<IEmiService, EmiService>();

        // Register Infrastructure layer
        services.AddInfrastructure(apiBaseUrl);

        return services;
    }
}
