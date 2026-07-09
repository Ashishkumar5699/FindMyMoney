namespace FindMyMoney.Presentations.Statement;

public partial class StatementPage : ContentPage
{
    private readonly StatementViewModel _viewModel;

    public StatementPage(StatementViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _viewModel.LoadStatement();
    }
}
