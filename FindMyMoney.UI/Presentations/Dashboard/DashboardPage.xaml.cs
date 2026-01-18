namespace FindMyMoney.Presentations.Dashboard;

public partial class DashboardPage : ContentPage
{
	private readonly DashboardPageViewModel _viewModel;

	public DashboardPage(DashboardPageViewModel dashboardPageViewModel)
	{
		InitializeComponent();
		_viewModel = dashboardPageViewModel;
		BindingContext = _viewModel;
	}

	protected override async void OnAppearing()
	{
		base.OnAppearing();

		// Load dashboard data when page appears
		await _viewModel.LoadDashboardDataCommand.ExecuteAsync(null);
	}
}