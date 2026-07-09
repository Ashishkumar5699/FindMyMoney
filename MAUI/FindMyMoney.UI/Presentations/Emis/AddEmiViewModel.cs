using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.Emis;

public partial class AddEmiViewModel : BaseViewModel
{
    private readonly IEmiService _emiService;
    private readonly ILogger<AddEmiViewModel> _logger;

    [ObservableProperty] string loanName = string.Empty;
    [ObservableProperty] string bankName = string.Empty;
    [ObservableProperty] string totalAmount = string.Empty;
    [ObservableProperty] string emiAmount = string.Empty;
    [ObservableProperty] string totalEmis = string.Empty;
    [ObservableProperty] string paidEmis = "0";
    [ObservableProperty] string interestRate = string.Empty;
    [ObservableProperty] DateTime startDate = DateTime.Now;
    [ObservableProperty] DateTime nextDueDate = DateTime.Now.AddMonths(1);
    [ObservableProperty] string selectedStatus = "Active";
    [ObservableProperty] string description = string.Empty;
    [ObservableProperty] string errorMessage = string.Empty;
    [ObservableProperty] bool isFormValid;

    public ObservableCollection<string> StatusOptions { get; } = new()
    {
        "Active", "Completed", "Paused"
    };

    public AddEmiViewModel(IEmiService emiService, ILogger<AddEmiViewModel> logger)
    {
        _emiService = emiService;
        _logger = logger;
        Title = "Add EMI";
    }

    partial void OnLoanNameChanged(string value) => ValidateForm();
    partial void OnBankNameChanged(string value) => ValidateForm();
    partial void OnTotalAmountChanged(string value) => ValidateForm();
    partial void OnEmiAmountChanged(string value) => ValidateForm();
    partial void OnTotalEmisChanged(string value) => ValidateForm();

    private void ValidateForm()
    {
        ErrorMessage = string.Empty;

        if (string.IsNullOrWhiteSpace(LoanName) || string.IsNullOrWhiteSpace(BankName))
        {
            IsFormValid = false;
            return;
        }

        if (!decimal.TryParse(TotalAmount, out var ta) || ta <= 0)
        {
            IsFormValid = false;
            return;
        }

        if (!decimal.TryParse(EmiAmount, out var ea) || ea <= 0)
        {
            IsFormValid = false;
            return;
        }

        if (!int.TryParse(TotalEmis, out var te) || te <= 0)
        {
            IsFormValid = false;
            return;
        }

        IsFormValid = true;
    }

    [RelayCommand]
    private async Task SaveEmi()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            ValidateForm();
            if (!IsFormValid)
            {
                ErrorMessage = "Please fill in all required fields correctly";
                return;
            }

            var emi = new Emi
            {
                LoanName = LoanName,
                BankName = BankName,
                TotalAmount = decimal.Parse(TotalAmount),
                EmiAmount = decimal.Parse(EmiAmount),
                TotalEmis = int.Parse(TotalEmis),
                PaidEmis = int.TryParse(PaidEmis, out var paid) ? paid : 0,
                InterestRate = decimal.TryParse(InterestRate, out var ir) ? ir : 0,
                StartDate = StartDate,
                NextDueDate = NextDueDate,
                Status = SelectedStatus,
                Description = Description
            };

            _logger.LogInformation("Creating EMI - Loan: {LoanName}", LoanName);
            var result = await _emiService.CreateEmiAsync(emi);

            if (result != null && result.IsSuccess)
            {
                _logger.LogInformation("EMI created successfully");
                await Shell.Current.GoToAsync("..");
            }
            else
            {
                ErrorMessage = result?.Error ?? "Unknown error occurred";
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = "An unexpected error occurred";
            _logger.LogError(ex, "Error saving EMI");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task Cancel() => await Shell.Current.GoToAsync("..");
}
