using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Application.Queries;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.Dashboard;

/// <summary>
/// ViewModel for the Dashboard page.
/// Displays financial summary and recent transactions.
/// </summary>
public partial class DashboardPageViewModel : BaseViewModel
{
    private readonly IExpenseService _expenseService;
    private readonly IIncomeService _incomeService;
    private readonly ILogger<DashboardPageViewModel> _logger;

    /// <summary>
    /// Gets or sets the total income amount
    /// </summary>
    [ObservableProperty]
    decimal totalIncome;

    /// <summary>
    /// Gets or sets the total expenses amount
    /// </summary>
    [ObservableProperty]
    decimal totalExpenses;

    /// <summary>
    /// Gets or sets the current balance (income - expenses)
    /// </summary>
    [ObservableProperty]
    decimal balance;

    /// <summary>
    /// Gets the username of the logged-in user
    /// </summary>
    [ObservableProperty]
    readonly string userName = "User";

    /// <summary>
    /// Gets or sets the greeting message based on time of day
    /// </summary>
    [ObservableProperty]
    string greeting = string.Empty;

    /// <summary>
    /// Collection of recent expenses to display
    /// </summary>
    public ObservableCollection<Expense> RecentExpenses { get; } = new();

    /// <summary>
    /// Collection of recent income transactions to display
    /// </summary>
    public ObservableCollection<Income> RecentIncomes { get; } = new();

    /// <summary>
    /// Gets or sets whether there are no expenses to display
    /// </summary>
    [ObservableProperty]
    bool hasNoExpenses = true;

    /// <summary>
    /// Gets or sets whether there are no incomes to display
    /// </summary>
    [ObservableProperty]
    bool hasNoIncomes = true;

    /// <summary>
    /// Initializes a new instance of the DashboardPageViewModel
    /// </summary>
    public DashboardPageViewModel(
        IExpenseService expenseService,
        IIncomeService incomeService,
        ILogger<DashboardPageViewModel> logger)
    {
        _expenseService = expenseService;
        _incomeService = incomeService;
        _logger = logger;

        Title = "Dashboard";
        SetGreeting();
    }

    /// <summary>
    /// Sets the greeting message based on the current time of day
    /// </summary>
    private void SetGreeting()
    {
        var hour = DateTime.Now.Hour;
        Greeting = hour switch
        {
            < 12 => "Good Morning",
            < 17 => "Good Afternoon",
            _ => "Good Evening"
        };
    }

    /// <summary>
    /// Loads all dashboard data
    /// </summary>
    [RelayCommand]
    private async Task LoadDashboardData()
    {
        if (IsBusy)
            return;

        try
        {
            IsBusy = true;
            _logger.LogInformation("Loading dashboard data");

            // In a real app, you would get the current user ID from a service
            // For now, using a placeholder
            Guid userId = Guid.NewGuid(); // TODO: Get actual user ID from auth service

            // Load financial summary
            await LoadFinancialSummary(userId);

            // Load recent transactions
            await LoadRecentTransactions(userId);

            _logger.LogInformation("Dashboard data loaded successfully");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error loading dashboard data");
        }
        finally
        {
            IsBusy = false;
        }
    }

    /// <summary>
    /// Loads the financial summary for the current month
    /// </summary>
    private async Task LoadFinancialSummary(Guid userId)
    {
        try
        {
            var startDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);

            // Get total income
            var incomeResult = await _incomeService.GetTotalIncomeAsync(startDate, endDate);
            if (incomeResult.IsSuccess)
            {
                TotalIncome = incomeResult.Data;
            }

            // Get total expenses
            var expenseResult = await _expenseService.GetTotalExpensesAsync(startDate, endDate);
            if (expenseResult.IsSuccess)
            {
                TotalExpenses = expenseResult.Data;
            }

            // Calculate balance
            Balance = TotalIncome - TotalExpenses;

            _logger.LogInformation("Financial summary loaded - Income: {Income}, Expenses: {Expenses}, Balance: {Balance}",
                TotalIncome, TotalExpenses, Balance);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error loading financial summary");
        }
    }

    /// <summary>
    /// Loads recent transactions (last 5 expenses and incomes)
    /// </summary>
    private async Task LoadRecentTransactions(Guid userId)
    {
        try
        {
            // Load recent expenses
            var expenseResult = await _expenseService.GetExpensesAsync();
            if (expenseResult.IsSuccess && expenseResult.Data != null)
            {
                RecentExpenses.Clear();
                var recentExpenses = expenseResult.Data
                    .OrderByDescending(e => e.Date)
                    .Take(5);

                foreach (var expense in recentExpenses)
                {
                    RecentExpenses.Add(expense);
                }

                HasNoExpenses = !RecentExpenses.Any();
            }

            // Load recent incomes
            var incomeResult = await _incomeService.GetIncomesAsync();
            if (incomeResult.IsSuccess && incomeResult.Data != null)
            {
                RecentIncomes.Clear();
                var recentIncomes = incomeResult.Data
                    .OrderByDescending(i => i.Date)
                    .Take(5);

                foreach (var income in recentIncomes)
                {
                    RecentIncomes.Add(income);
                }

                HasNoIncomes = !RecentIncomes.Any();
            }

            _logger.LogInformation("Recent transactions loaded - Expenses: {ExpenseCount}, Incomes: {IncomeCount}",
                RecentExpenses.Count, RecentIncomes.Count);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error loading recent transactions");
        }
    }

    /// <summary>
    /// Navigates to the add expense page
    /// </summary>
    [RelayCommand]
    private async Task AddExpense()
    {
        _logger.LogInformation("Navigate to Add Expense page");
        await Shell.Current.GoToAsync("add-expense");
    }

    /// <summary>
    /// Navigates to the add income page
    /// </summary>
    [RelayCommand]
    private async Task AddIncome()
    {
        _logger.LogInformation("Navigate to Add Income page");
        // TODO: Implement navigation to add income page
        // await Shell.Current.GoToAsync("add-income");
    }

    /// <summary>
    /// Navigates to the expenses list page
    /// </summary>
    [RelayCommand]
    private async Task ViewAllExpenses()
    {
        _logger.LogInformation("Navigate to All Expenses page");
        // TODO: Implement navigation to expenses list page
        // await Shell.Current.GoToAsync("expenses");
    }

    /// <summary>
    /// Navigates to the income list page
    /// </summary>
    [RelayCommand]
    private async Task ViewAllIncomes()
    {
        _logger.LogInformation("Navigate to All Incomes page");
        // TODO: Implement navigation to incomes list page
        // await Shell.Current.GoToAsync("incomes");
    }

    /// <summary>
    /// Refreshes the dashboard data
    /// </summary>
    [RelayCommand]
    private async Task Refresh()
    {
        await LoadDashboardData();
    }
}
