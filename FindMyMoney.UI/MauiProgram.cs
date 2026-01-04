using FindMyMoney.Configurations;
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

#if DEBUG
		builder.Logging.AddDebug();
#endif

		return builder.Build();
	}
}
