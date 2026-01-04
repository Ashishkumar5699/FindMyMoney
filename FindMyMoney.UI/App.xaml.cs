using FindMyMoney.Presentations.Login;

namespace FindMyMoney;

public partial class App(LoginPage shell) : Microsoft.Maui.Controls.Application
{
    private readonly LoginPage _shell = shell;

    protected override Window CreateWindow(IActivationState? activationState)
    {
        return new Window(_shell);
    }
}