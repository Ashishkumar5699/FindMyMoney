using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Repositories;
using FindMyMoney.Infrastructure.ApiClients;
using FindMyMoney.Infrastructure.Local;
using FindMyMoney.Infrastructure.Repositories;
using FindMyMoney.Infrastructure.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Refit;

namespace FindMyMoney.Infrastructure;

public static class InfrastructureRegistration
{
    public static IServiceCollection AddInfrastructure(this IServiceCollection services, string apiBaseUrl)
    {
        services.AddAutoMapper(typeof(InfrastructureRegistration).Assembly);

        // Local SQLite DB
        services.AddDbContext<LocalDbContext>(options =>
            options.UseSqlite("Data Source=findmymoney.db"));

        services.AddScoped<ISyncService, SyncService>();

        services.AddScoped<IUserRepository, UserRepository>();
        services.AddScoped<IExpenseRepository, ExpenseRepository>();
        services.AddScoped<IIncomeRepository, IncomeRepository>();
        services.AddScoped<IEmiRepository, EmiRepository>();

        services.RegisterInfrastructureRefit(apiBaseUrl);
        return services;
    }

    public static IServiceCollection RegisterInfrastructureRefit(this IServiceCollection services, string apiBaseUrl)
    {
        services.AddTransient<HttpLoggingHandler>();
        services.AddTransient<BearerTokenHandler>();

        // Auth clients — no Bearer token needed
        services.AddRefitClient<ILoginApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl))
            .AddHttpMessageHandler<HttpLoggingHandler>();

        services.AddRefitClient<IRegisterApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl))
            .AddHttpMessageHandler<HttpLoggingHandler>();

        services.AddRefitClient<IUserApiService>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl))
            .AddHttpMessageHandler<BearerTokenHandler>();

        // Protected clients — Bearer token injected via BearerTokenHandler
        services.AddRefitClient<IExpenseRESTRepository>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl))
            .AddHttpMessageHandler<BearerTokenHandler>();

        services.AddRefitClient<IIncomeRESTRepository>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl))
            .AddHttpMessageHandler<BearerTokenHandler>();

        services.AddRefitClient<IEmiRESTRepository>()
            .ConfigureHttpClient(c => c.BaseAddress = new Uri(apiBaseUrl))
            .AddHttpMessageHandler<BearerTokenHandler>();

        return services;
    }
}
