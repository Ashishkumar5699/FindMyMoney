using FindMyMoney.Presentations.Login;

namespace FindMyMoney;

public partial class App : Microsoft.Maui.Controls.Application
{
    private readonly IServiceProvider _serviceProvider;

    public App(IServiceProvider serviceProvider)
    {
        _serviceProvider = serviceProvider;
        InitializeComponent();
    }

    protected override Window CreateWindow(IActivationState? activationState)
    {
        var loginPage = _serviceProvider.GetRequiredService<LoginPage>();
        var navPage = new NavigationPage(loginPage)
        {
            BarBackgroundColor = Color.FromArgb("#1A237E"),
            BarTextColor = Colors.White
        };
        NavigationPage.SetHasNavigationBar(loginPage, false);
        return new Window(navPage);
    }
}
