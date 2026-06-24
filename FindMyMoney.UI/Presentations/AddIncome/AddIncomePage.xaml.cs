namespace FindMyMoney.Presentations.AddIncome;

public partial class AddIncomePage : ContentPage
{
    public AddIncomePage(AddIncomeViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}
