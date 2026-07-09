using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using FindMyMoney.Domain.IService;
using MauiApp = Microsoft.Maui.Controls.Application;

namespace FindMyMoney.UI.Services;

/// <summary>
/// Service for displaying dialogs and alerts to the user
/// </summary>
public class DialogService : IDialogService
{
    public async Task ShowAlertAsync(string title, string message, string buttonText = "OK")
    {
        if (MauiApp.Current?.MainPage != null)
        {
            await MauiApp.Current.MainPage.DisplayAlert(title, message, buttonText);
        }
    }

    public async Task<bool> ShowConfirmAsync(string title, string message, string acceptText = "Yes", string cancelText = "No")
    {
        if (MauiApp.Current?.MainPage != null)
        {
            return await MauiApp.Current.MainPage.DisplayAlert(title, message, acceptText, cancelText);
        }
        return false;
    }

    public async Task ShowToastAsync(string message)
    {
        var toast = Toast.Make(message, ToastDuration.Short);
        await toast.Show();
    }
}
