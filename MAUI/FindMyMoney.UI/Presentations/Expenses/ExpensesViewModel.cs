using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.Expenses;

public partial class ExpensesViewModel : BaseViewModel
{
    private readonly IExpenseService _expenseService;
    private readonly ILogger<ExpensesViewModel> _logger;

    public ObservableCollection<Expense> Expenses { get; } = new();

    [ObservableProperty]
    bool hasNoExpenses = true;

    [ObservableProperty]
    string searchText = string.Empty;

    [ObservableProperty]
    decimal totalAmount;

    public ExpensesViewModel(IExpenseService expenseService, ILogger<ExpensesViewModel> logger)
    {
        _expenseService = expenseService;
        _logger = logger;
        Title = "All Expenses";
    }

    partial void OnSearchTextChanged(string value) => FilterExpenses();

    private List<Expense> _allExpenses = new();

    private void FilterExpenses()
    {
        Expenses.Clear();
        var filtered = string.IsNullOrWhiteSpace(SearchText)
            ? _allExpenses
            : _allExpenses.Where(e =>
                e.Category.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ||
                (e.Description?.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ?? false));

        foreach (var e in filtered)
            Expenses.Add(e);

        HasNoExpenses = !Expenses.Any();
        TotalAmount = Expenses.Sum(e => e.Amount);
    }

    [RelayCommand]
    private async Task LoadExpenses()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            _logger.LogInformation("Loading expenses");

            var result = await _expenseService.GetExpensesAsync();
            if (result.IsSuccess && result.Data != null)
            {
                _allExpenses = result.Data.OrderByDescending(e => e.Date).ToList();
                FilterExpenses();
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error loading expenses");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task Refresh() => await LoadExpenses();

    [RelayCommand]
    private async Task DeleteExpense(Expense expense)
    {
        if (expense == null) return;

        try
        {
            var result = await _expenseService.DeleteExpenseAsync(expense.Id);
            if (result.IsSuccess)
            {
                _allExpenses.Remove(expense);
                FilterExpenses();
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting expense {Id}", expense.Id);
        }
    }
}
