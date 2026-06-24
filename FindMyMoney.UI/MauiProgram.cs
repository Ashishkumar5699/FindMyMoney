using FindMyMoney.Configurations;
using CommunityToolkit.Maui;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System.Reflection;

namespace FindMyMoney;

public static class MauiProgram
{
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.UseMauiCommunityToolkit()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});

		// Load configuration
		var assembly = Assembly.GetExecutingAssembly();
		using var stream = assembly.GetManifestResourceStream("FindMyMoney.appsettings.json");

		if (stream == null)
		{
			throw new InvalidOperationException("Could not find embedded resource 'appsettings.json'. Ensure the file is marked as EmbeddedResource.");
		}

		var config = new ConfigurationBuilder()
			.AddJsonStream(stream)
			.Build();

		// Get API base URL from configuration
		var apiBaseUrl = config["ApiSettings:BaseUrl"] ?? "https://your-api-server.com";

		builder.Services.RegisterUIs(apiBaseUrl);

		builder.Logging.AddDebug();
		builder.Logging.SetMinimumLevel(LogLevel.Debug);

		var app = builder.Build();

		// Ensure local SQLite DB is created on first run
		using (var scope = app.Services.CreateScope())
		{
			var dbContext = scope.ServiceProvider.GetRequiredService<FindMyMoney.Infrastructure.Local.LocalDbContext>();
			dbContext.Database.EnsureCreated();
		}

		return app;
	}
}
