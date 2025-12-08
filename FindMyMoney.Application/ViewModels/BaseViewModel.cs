using CommunityToolkit.Mvvm.ComponentModel;

namespace FindMyMoney.Application.ViewModels;

public partial class BaseViewModel : ObservableObject
{
    [ObservableProperty]
    bool _isBusy = false;

    [ObservableProperty]
    string _title = string.Empty;
}
