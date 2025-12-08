using FindMyMoney.Views;

namespace FindMyMoney;

public partial class App : Application
{
	// public App()
	// {
	// 	InitializeComponent();
	// 	MainPage = new AppShell();
	// }

	// protected override Window CreateWindow(IActivationState? activationState)
	// {
	// 	return new Window(new AppShell());
	// }

    private readonly LoginPage _shell;

    public App(LoginPage shell)
    {
        _shell = shell;
    }

    protected override Window CreateWindow(IActivationState? activationState)
    {
        return new Window(_shell);
    }
}