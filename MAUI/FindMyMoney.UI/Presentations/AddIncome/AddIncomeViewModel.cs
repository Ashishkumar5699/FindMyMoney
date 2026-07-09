using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.AddIncome;

public partial class AddIncomeViewModel : BaseViewModel
{
    private readonly IIncomeService _incomeService;
    private readonly ILogger<AddIncomeViewModel> _logger;

    [ObservableProperty]
    string amount = string.Empty;

    [ObservableProperty]
    string selectedSource = string.Empty;

    [ObservableProperty]
    string description = string.Empty;

    [ObservableProperty]
    DateTime incomeDate = DateTime.Now;

    [ObservableProperty]
    string errorMessage = string.Empty;

    [ObservableProperty]
    bool isFormValid;

    public ObservableCollection<string> Sources { get; } = new()
    {
        "Salary",
        "Freelance",
        "Business",
        "Investment",
        "Rental",
        "Interest",
        "Gift",
        "Bonus",
        "Side Income",
        "Other"
    };

    public AddIncomeViewModel(IIncomeService incomeService, ILogger<AddIncomeViewModel> logger)
    {
        _incomeService = incomeService;
        _logger = logger;
        Title = "Add Income";
        SelectedSource = Sources.First();
    }

    partial void OnAmountChanged(string value) => ValidateForm();
    partial void OnSelectedSourceChanged(string value) => ValidateForm();

    private void ValidateForm()
    {
        ErrorMessage = string.Empty;

        if (string.IsNullOrWhiteSpace(Amount))
        {
            IsFormValid = false;
            return;
        }

        if (!decimal.TryParse(Amount, out var val) || val <= 0)
        {
            ErrorMessage = "Please enter a valid amount greater than 0";
            IsFormValid = false;
            return;
        }

        if (string.IsNullOrWhiteSpace(SelectedSource))
        {
            ErrorMessage = "Please select a source";
            IsFormValid = false;
            return;
        }

        IsFormValid = true;
    }

    [RelayCommand]
    private async Task SaveIncome()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            ValidateForm();
            if (!IsFormValid) return;

            if (!decimal.TryParse(Amount, out var amountValue))
            {
                ErrorMessage = "Invalid amount";
                return;
            }

            var income = new Income
            {
                Amount = amountValue,
                Source = SelectedSource,
                Description = Description,
                Date = IncomeDate
            };

            _logger.LogInformation("Creating income - Amount: {Amount}, Source: {Source}", amountValue, SelectedSource);
            var result = await _incomeService.CreateIncomeAsync(income);

            if (result != null && result.IsSuccess)
            {
                _logger.LogInformation("Income created successfully");
                await Shell.Current.GoToAsync("..");
            }
            else
            {
                ErrorMessage = result?.Error ?? "Unknown error occurred";
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = "An unexpected error occurred while saving income";
            _logger.LogError(ex, "Error saving income");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task Cancel() => await Shell.Current.GoToAsync("..");

    [RelayCommand]
    private void ClearForm()
    {
        Amount = string.Empty;
        Description = string.Empty;
        IncomeDate = DateTime.Now;
        SelectedSource = Sources.First();
        ErrorMessage = string.Empty;
    }
}
