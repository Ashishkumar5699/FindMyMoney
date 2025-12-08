using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;

namespace FindMyMoney.Application.ViewModels;

public partial class LoginViewModel(IAuthService auth) : BaseViewModel
{
    private readonly IAuthService _auth = auth;
    
    [ObservableProperty] string username = string.Empty;

    [ObservableProperty] string password = string.Empty;

    [RelayCommand]
    private async Task Login()
    {
        if (IsBusy) return;
        IsBusy = true;

        _auth.LoginAsync(Username, Password);

        IsBusy = false;
    }
}
