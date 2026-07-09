namespace FindMyMoney.Domain.IService;

/// <summary>
/// Service for displaying dialogs and alerts to the user
/// </summary>
public interface IDialogService
{
    /// <summary>
    /// Shows an alert dialog
    /// </summary>
    Task ShowAlertAsync(string title, string message, string buttonText = "OK");

    /// <summary>
    /// Shows a confirmation dialog
    /// </summary>
    Task<bool> ShowConfirmAsync(string title, string message, string acceptText = "Yes", string cancelText = "No");

    /// <summary>
    /// Shows a toast message
    /// </summary>
    Task ShowToastAsync(string message);
}
