using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.Incomes;

public partial class IncomesViewModel : BaseViewModel
{
    private readonly IIncomeService _incomeService;
    private readonly ILogger<IncomesViewModel> _logger;

    public ObservableCollection<Income> Incomes { get; } = new();

    [ObservableProperty]
    bool hasNoIncomes = true;

    [ObservableProperty]
    string searchText = string.Empty;

    [ObservableProperty]
    decimal totalAmount;

    private List<Income> _allIncomes = new();

    public IncomesViewModel(IIncomeService incomeService, ILogger<IncomesViewModel> logger)
    {
        _incomeService = incomeService;
        _logger = logger;
        Title = "All Incomes";
    }

    partial void OnSearchTextChanged(string value) => FilterIncomes();

    private void FilterIncomes()
    {
        Incomes.Clear();
        var filtered = string.IsNullOrWhiteSpace(SearchText)
            ? _allIncomes
            : _allIncomes.Where(i =>
                i.Source.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ||
                (i.Description?.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ?? false));

        foreach (var i in filtered)
            Incomes.Add(i);

        HasNoIncomes = !Incomes.Any();
        TotalAmount = Incomes.Sum(i => i.Amount);
    }

    [RelayCommand]
    private async Task LoadIncomes()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            var result = await _incomeService.GetIncomesAsync();
            if (result.IsSuccess && result.Data != null)
            {
                _allIncomes = result.Data.OrderByDescending(i => i.Date).ToList();
                FilterIncomes();
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error loading incomes");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task Refresh() => await LoadIncomes();

    [RelayCommand]
    private async Task DeleteIncome(Income income)
    {
        if (income == null) return;

        try
        {
            var result = await _incomeService.DeleteIncomeAsync(income.Id);
            if (result.IsSuccess)
            {
                _allIncomes.Remove(income);
                FilterIncomes();
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting income {Id}", income.Id);
        }
    }
}
