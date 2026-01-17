using FindMyMoney.Presentations.AddExpense;

namespace FindMyMoney;

public partial class AppShell : Shell
{
	public AppShell()
	{
		InitializeComponent();

		// Register routes for navigation
		Routing.RegisterRoute("add-expense", typeof(AddExpensePage));
	}
}
