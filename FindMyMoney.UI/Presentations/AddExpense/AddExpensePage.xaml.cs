namespace FindMyMoney.Presentations.AddExpense;

public partial class AddExpensePage : ContentPage
{
	public AddExpensePage(AddExpenseViewModel viewModel)
	{
		InitializeComponent();
		BindingContext = viewModel;
	}
}
