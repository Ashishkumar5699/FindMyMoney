using System;

namespace FindMyMoney.Helpers;

public class NavigationService
{
    public Task NavigateToAsync(Page page)
        => Shell.Current.GoToAsync(page.GetType().Name);

    public Task GoBackAsync()
        => Shell.Current.GoToAsync("..");
}
