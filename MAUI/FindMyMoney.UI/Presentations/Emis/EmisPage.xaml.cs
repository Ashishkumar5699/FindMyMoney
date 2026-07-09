namespace FindMyMoney.Presentations.Emis;

public partial class EmisPage : ContentPage
{
    private readonly EmisViewModel _viewModel;

    public EmisPage(EmisViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
        _viewModel = viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _viewModel.LoadEmisCommand.ExecuteAsync(null);
    }
}
