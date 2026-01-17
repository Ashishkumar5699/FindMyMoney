using CommunityToolkit.Maui.Alerts;
using CommunityToolkit.Maui.Core;
using FindMyMoney.Domain.IService;
using Microsoft.Maui.Controls;

namespace FindMyMoney.UI.Services;

/// <summary>
/// Service for displaying dialogs and alerts to the user
/// </summary>
public class DialogService : IDialogService
{
    public async Task ShowAlertAsync(string title, string message, string buttonText = "OK")
    {
        if (Application.Current?.MainPage != null)
        {
            await Application.Current.MainPage.DisplayAlert(title, message, buttonText);
        }
    }

    public async Task<bool> ShowConfirmAsync(string title, string message, string acceptText = "Yes", string cancelText = "No")
    {
        if (Application.Current?.MainPage != null)
        {
            return await Application.Current.MainPage.DisplayAlert(title, message, acceptText, cancelText);
        }
        return false;
    }

    public async Task ShowToastAsync(string message)
    {
        var toast = Toast.Make(message, ToastDuration.Short);
        await toast.Show();
    }
}
