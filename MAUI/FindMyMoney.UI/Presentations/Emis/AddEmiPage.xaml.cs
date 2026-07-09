namespace FindMyMoney.Presentations.Emis;

public partial class AddEmiPage : ContentPage
{
    public AddEmiPage(AddEmiViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}
