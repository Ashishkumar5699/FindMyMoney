using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.Repositories;
using Microsoft.Extensions.DependencyInjection;

namespace FindMyMoney.Infrastructure;

public static class InfrastructureRegistration
{
    public static IServiceCollection AddInfrastructure(this IServiceCollection services)
    {
        // Register Repositories (Scoped for better lifecycle management)
        services.AddScoped<IUserRepository, UserRepository>();

        services.AddScoped<IExpenseRepository, ExpenseRepository>();

        services.AddScoped<IIncomeRepository, IncomeRepository>();

        // Note: AuthService is now registered in Application layer
        // as it depends on API services

        return services;
    }
}
