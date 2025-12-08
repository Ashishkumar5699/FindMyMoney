using FindMyMoney.Helpers;
using FindMyMoney.Views;

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

		builder.Services.AddSingleton<NavigationService>();

        // builder.Services.AddSingleton<ApiService>();
        // builder.Services.AddSingleton<AuthService>();

        builder.Services.AddSingleton<LoginViewModel>();
        // builder.Services.AddSingleton<HomeViewModel>();

        builder.Services.AddSingleton<LoginPage>();
        builder.Services.AddSingleton<HomePage>();

#if DEBUG
		// builder.Logging.AddDebug();
#endif

		return builder.Build();
	}
}
