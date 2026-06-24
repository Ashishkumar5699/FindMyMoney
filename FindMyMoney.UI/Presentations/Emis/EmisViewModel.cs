using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.Emis;

public partial class EmisViewModel : BaseViewModel
{
    private readonly IEmiService _emiService;
    private readonly ILogger<EmisViewModel> _logger;

    public ObservableCollection<Emi> Emis { get; } = new();

    [ObservableProperty] bool hasNoEmis = true;
    [ObservableProperty] decimal totalRemainingAmount;
    [ObservableProperty] int activeEmiCount;

    public EmisViewModel(IEmiService emiService, ILogger<EmisViewModel> logger)
    {
        _emiService = emiService;
        _logger = logger;
        Title = "EMI Tracker";
    }

    [RelayCommand]
    private async Task LoadEmis()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            _logger.LogInformation("Loading EMIs");

            var result = await _emiService.GetEmisAsync();
            if (result.IsSuccess && result.Data != null)
            {
                Emis.Clear();
                foreach (var emi in result.Data.OrderBy(e => e.NextDueDate))
                    Emis.Add(emi);

                HasNoEmis = !Emis.Any();
                TotalRemainingAmount = Emis.Where(e => e.Status == "Active").Sum(e => e.RemainingAmount);
                ActiveEmiCount = Emis.Count(e => e.Status == "Active");
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error loading EMIs");
        }
        finally
        {
            IsBusy = false;
        }
    }

    [RelayCommand]
    private async Task Refresh() => await LoadEmis();

    [RelayCommand]
    private async Task AddEmi()
    {
        _logger.LogInformation("Navigate to Add EMI page");
        await Shell.Current.GoToAsync("add-emi");
    }

    [RelayCommand]
    private async Task MarkEmiPaid(Emi emi)
    {
        if (emi == null || emi.Status == "Completed") return;

        try
        {
            emi.PaidEmis = Math.Min(emi.PaidEmis + 1, emi.TotalEmis);
            emi.NextDueDate = emi.NextDueDate.AddMonths(1);

            if (emi.PaidEmis >= emi.TotalEmis)
                emi.Status = "Completed";

            var result = await _emiService.UpdateEmiAsync(emi);
            if (result.IsSuccess)
            {
                await LoadEmis();
            }
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error marking EMI paid {Id}", emi.Id);
        }
    }

    [RelayCommand]
    private async Task DeleteEmi(Emi emi)
    {
        if (emi == null) return;

        try
        {
            var result = await _emiService.DeleteEmiAsync(emi.Id);
            if (result.IsSuccess)
                await LoadEmis();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error deleting EMI {Id}", emi.Id);
        }
    }
}
