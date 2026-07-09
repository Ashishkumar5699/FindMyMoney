
using FindMyMoney.UI.Presentations.Login;

namespace FindMyMoney.Presentations.Login;

public partial class LoginPage : ContentPage
{
	public LoginPage(LoginViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}