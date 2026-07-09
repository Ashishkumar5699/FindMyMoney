using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.Statement;

public partial class StatementViewModel : BaseViewModel
{
    private readonly IStatementService _statementService;
    private readonly ILogger<StatementViewModel> _logger;

    [ObservableProperty] int selectedMonth = DateTime.Now.Month;
    [ObservableProperty] int selectedYear = DateTime.Now.Year;
    [ObservableProperty] decimal totalIncome;
    [ObservableProperty] decimal totalExpense;
    [ObservableProperty] decimal netBalance;
    [ObservableProperty] bool hasData;
    [ObservableProperty] string errorMessage = string.Empty;

    public ObservableCollection<string> Months { get; } = new(
        Enumerable.Range(1, 12).Select(m => new DateTime(2000, m, 1).ToString("MMMM")));

    public ObservableCollection<int> Years { get; } = new(
        Enumerable.Range(DateTime.Now.Year - 3, 5));

    public ObservableCollection<CategorySummary> CategoryBreakdown { get; } = new();

    public string SelectedMonthName => new DateTime(2000, SelectedMonth, 1).ToString("MMMM");

    public StatementViewModel(IStatementService statementService, ILogger<StatementViewModel> logger)
    {
        _statementService = statementService;
        _logger = logger;
        Title = "Statement";
    }

    partial void OnSelectedMonthChanged(int value) => _ = LoadStatementAsync();
    partial void OnSelectedYearChanged(int value) => _ = LoadStatementAsync();

    [RelayCommand]
    public async Task LoadStatement() => await LoadStatementAsync();

    private async Task LoadStatementAsync()
    {
        if (IsBusy) return;
        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            var result = await _statementService.GetStatementAsync(SelectedMonth, SelectedYear);
            if (!result.IsSuccess)
            {
                ErrorMessage = result.Error ?? "Failed to load statement";
                HasData = false;
                return;
            }

            var summary = result.Data!;
            TotalIncome = summary.TotalIncome;
            TotalExpense = summary.TotalExpense;
            NetBalance = summary.NetBalance;
            HasData = summary.TotalIncome > 0 || summary.TotalExpense > 0;

            CategoryBreakdown.Clear();
            foreach (var cat in summary.ExpenseByCategory)
                CategoryBreakdown.Add(cat);
        }
        catch (Exception ex)
        {
            ErrorMessage = "Failed to load statement";
            _logger.LogError(ex, "Error loading statement");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private void PreviousMonth()
    {
        if (SelectedMonth == 1) { SelectedMonth = 12; SelectedYear--; }
        else SelectedMonth--;
    }

    [RelayCommand]
    private void NextMonth()
    {
        if (SelectedMonth == 12) { SelectedMonth = 1; SelectedYear++; }
        else SelectedMonth++;
    }
}
