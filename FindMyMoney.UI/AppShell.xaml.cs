using FindMyMoney.Presentations.AddExpense;
using FindMyMoney.Presentations.AddIncome;
using FindMyMoney.Presentations.Emis;
using FindMyMoney.Presentations.Expenses;
using FindMyMoney.Presentations.Incomes;
using FindMyMoney.UI.Presentations.Register;

namespace FindMyMoney;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        Routing.RegisterRoute("add-expense", typeof(AddExpensePage));
        Routing.RegisterRoute("add-income", typeof(AddIncomePage));
        Routing.RegisterRoute("add-emi", typeof(AddEmiPage));
        Routing.RegisterRoute("expenses", typeof(ExpensesPage));
        Routing.RegisterRoute("incomes", typeof(IncomesPage));
        Routing.RegisterRoute("login", typeof(Presentations.Login.LoginPage));
        Routing.RegisterRoute("register", typeof(RegisterPage));
    }
}
