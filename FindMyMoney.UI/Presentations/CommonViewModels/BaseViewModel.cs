using CommunityToolkit.Mvvm.ComponentModel;

namespace FindMyMoney.UI.ViewModels;

/// <summary>
/// Base class for all ViewModels in the application.
/// Provides common properties and functionality using MVVM Community Toolkit.
/// </summary>
public partial class BaseViewModel : ObservableObject
{
    /// <summary>
    /// Gets or sets a value indicating whether the ViewModel is currently performing an operation.
    /// Use this to show loading indicators in the UI.
    /// </summary>
    [ObservableProperty]
    bool _isBusy = false;

    /// <summary>
    /// Gets or sets the title to display for the current page or view
    /// </summary>
    [ObservableProperty]
    string _title = string.Empty;
}
