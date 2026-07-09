# FindMyMoney.UI - Structure Guide

## Overview

The FindMyMoney.UI project uses a **hybrid organizational pattern** combining feature-based and layered approaches for optimal code organization and maintainability.

---

## Folder Structure

```
FindMyMoney.UI/
│
├── 📱 App Files (Root Level)
│   ├── App.xaml / App.xaml.cs              - Application entry point
│   ├── AppShell.xaml / AppShell.xaml.cs    - Shell navigation container
│   ├── MainPage.xaml / MainPage.xaml.cs    - Default main page
│   ├── MauiProgram.cs                       - MAUI configuration & DI setup
│   └── GlobalXmlns.cs                       - Global XAML namespaces
│
├── 📁 Presentations/ (Feature-Based Organization)
│   └── Login/
│       ├── LoginPage.xaml                   - UI definition
│       ├── LoginPage.xaml.cs                - Code-behind
│       └── LoginViewModel.cs                - Business logic & state
│
├── 📁 Views/ (XAML Pages - Layered Organization)
│   ├── HomePage.xaml                        - Home page UI
│   └── HomePage.xaml.cs                     - Home page code-behind
│
├── 📁 ViewModels/ (Business Logic - Layered Organization)
│   ├── BaseViewModel.cs                     - Base class for all ViewModels
│   └── HomeViewModel.cs                     - Home page logic
│
├── 📁 Models/ (UI-specific data models)
│   ├── LoginRequest.cs                      - Login request DTO
│   └── User.cs                              - UI User model
│
├── 📁 Configurations/
│   └── AppDependency.cs                     - Dependency Injection setup
│
├── 📁 Helpers/
│   └── NavigationService.cs                 - Navigation abstraction
│
├── 📁 Resources/
│   ├── AppIcon/                             - Application icons
│   ├── Fonts/                               - Custom fonts
│   ├── Images/                              - Image assets
│   ├── Raw/                                 - Raw resource files
│   ├── Splash/                              - Splash screen assets
│   └── Styles/
│       ├── Colors.xaml                      - Color definitions
│       └── Styles.xaml                      - Global styles
│
└── 📁 Platforms/                            - Platform-specific code
    ├── Android/
    ├── iOS/
    ├── MacCatalyst/
    ├── Windows/
    └── Tizen/
```

---

## Organizational Patterns

### Pattern 1: Feature-Based (Presentations Folder) ⭐ Recommended for New Features

**Location:** `/Presentations/{FeatureName}/`

**Structure:**
```
Presentations/
└── Login/
    ├── LoginPage.xaml          - XAML UI
    ├── LoginPage.xaml.cs       - Code-behind
    └── LoginViewModel.cs       - ViewModel logic
```

**Benefits:**
- ✅ All related files grouped together
- ✅ Easy to find and navigate
- ✅ Clear feature boundaries
- ✅ Better for large applications
- ✅ Easier to delete/modify entire features

**When to Use:**
- New features
- Complex screens with multiple related files
- Features that might be extracted to separate modules

**Example: Login Feature**
```csharp
// Namespace: FindMyMoney.UI.Presentations.Login
// All three files (Page, Code-behind, ViewModel) in same folder
```

---

### Pattern 2: Layered (Views + ViewModels Folders)

**Location:** `/Views/` and `/ViewModels/`

**Structure:**
```
Views/
└── HomePage.xaml
└── HomePage.xaml.cs

ViewModels/
└── HomeViewModel.cs
```

**Benefits:**
- ✅ Clear separation of concerns
- ✅ Traditional MVVM pattern
- ✅ Good for smaller applications

**When to Use:**
- Legacy pages (already created this way)
- Simple pages with minimal logic
- Quick prototypes

---

## Recommended Standard Going Forward

### ✨ Use Feature-Based Organization (Presentations Folder)

For consistency and scalability, **new features should follow the Presentations pattern**:

```
Presentations/
├── Login/
│   ├── LoginPage.xaml
│   ├── LoginPage.xaml.cs
│   └── LoginViewModel.cs
├── Dashboard/
│   ├── DashboardPage.xaml
│   ├── DashboardPage.xaml.cs
│   └── DashboardViewModel.cs
├── Expenses/
│   ├── ExpenseListPage.xaml
│   ├── ExpenseListPage.xaml.cs
│   ├── ExpenseListViewModel.cs
│   ├── AddExpensePage.xaml
│   ├── AddExpensePage.xaml.cs
│   └── AddExpenseViewModel.cs
└── Profile/
    ├── ProfilePage.xaml
    ├── ProfilePage.xaml.cs
    └── ProfileViewModel.cs
```

---

## File Naming Conventions

### Pages (XAML)
```
{FeatureName}Page.xaml
```
Examples: `LoginPage.xaml`, `DashboardPage.xaml`, `ExpenseListPage.xaml`

### ViewModels
```
{FeatureName}ViewModel.cs
```
Examples: `LoginViewModel.cs`, `DashboardViewModel.cs`, `ExpenseListViewModel.cs`

### Code-Behind
```
{FeatureName}Page.xaml.cs
```
Examples: `LoginPage.xaml.cs`, `DashboardPage.xaml.cs`

---

## Namespace Conventions

### Feature-Based (Presentations)
```csharp
namespace FindMyMoney.UI.Presentations.{FeatureName};

// Examples:
// FindMyMoney.UI.Presentations.Login
// FindMyMoney.UI.Presentations.Dashboard
// FindMyMoney.UI.Presentations.Expenses
```

### Layered (Views/ViewModels)
```csharp
// For Views
namespace FindMyMoney.UI.Views;

// For ViewModels
namespace FindMyMoney.UI.ViewModels;
```

---

## MVVM Pattern Implementation

### 1. ViewModel Structure

```csharp
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.UI.Presentations.FeatureName;

/// <summary>
/// ViewModel for the Feature page
/// </summary>
public partial class FeatureViewModel : BaseViewModel
{
    private readonly IService _service;
    private readonly ILogger<FeatureViewModel> _logger;

    /// <summary>
    /// Observable property bound to UI
    /// </summary>
    [ObservableProperty]
    string propertyName = string.Empty;

    public FeatureViewModel(IService service, ILogger<FeatureViewModel> logger)
    {
        _service = service;
        _logger = logger;
        Title = "Feature Title";
    }

    /// <summary>
    /// Command bound to button click
    /// </summary>
    [RelayCommand]
    private async Task DoSomething()
    {
        if (IsBusy) return;

        try
        {
            IsBusy = true;
            // Command logic here
        }
        finally
        {
            IsBusy = false;
        }
    }
}
```

### 2. Page XAML Structure

```xml
<?xml version="1.0" encoding="utf-8" ?>
<ContentPage xmlns="http://schemas.microsoft.com/dotnet/2021/maui"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             xmlns:vm="clr-namespace:FindMyMoney.UI.Presentations.FeatureName"
             x:Class="FindMyMoney.UI.Presentations.FeatureName.FeaturePage"
             x:DataType="vm:FeatureViewModel"
             Title="{Binding Title}">

    <StackLayout Padding="20">
        <Entry Text="{Binding PropertyName}"
               Placeholder="Enter value" />

        <Button Text="Submit"
                Command="{Binding DoSomethingCommand}"
                IsEnabled="{Binding IsBusy, Converter={StaticResource InverseBoolConverter}}" />

        <ActivityIndicator IsRunning="{Binding IsBusy}"
                          IsVisible="{Binding IsBusy}" />
    </StackLayout>
</ContentPage>
```

### 3. Page Code-Behind

```csharp
namespace FindMyMoney.UI.Presentations.FeatureName;

public partial class FeaturePage : ContentPage
{
    public FeaturePage(FeatureViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}
```

---

## Dependency Injection Setup

### AppDependency.cs
```csharp
using FindMyMoney.Application.Configurations;
using FindMyMoney.Helpers;
using FindMyMoney.UI.Presentations.Login;
using FindMyMoney.UI.Presentations.Dashboard;
using FindMyMoney.UI.ViewModels;

namespace FindMyMoney.Configurations;

public static class AppDependency
{
    public static IServiceCollection RegisterUIs(this IServiceCollection services)
    {
        // Register Helpers
        services.AddSingleton<NavigationService>();

        // Register Feature-Based (Presentations)
        RegisterLoginFeature(services);
        RegisterDashboardFeature(services);

        // Register Layered (Legacy)
        RegisterLegacyViews(services);

        // Register Application layer
        services.RegisterApplication();

        return services;
    }

    private static void RegisterLoginFeature(IServiceCollection services)
    {
        services.AddTransient<LoginViewModel>();
        services.AddSingleton<LoginPage>();
    }

    private static void RegisterDashboardFeature(IServiceCollection services)
    {
        services.AddTransient<DashboardViewModel>();
        services.AddSingleton<DashboardPage>();
    }

    private static void RegisterLegacyViews(IServiceCollection services)
    {
        services.AddTransient<HomeViewModel>();
        services.AddSingleton<HomePage>();
    }
}
```

---

## BaseViewModel

Located at: `/ViewModels/BaseViewModel.cs`

```csharp
using CommunityToolkit.Mvvm.ComponentModel;

namespace FindMyMoney.UI.ViewModels;

/// <summary>
/// Base class for all ViewModels in the application.
/// Provides common properties and functionality using MVVM Community Toolkit.
/// </summary>
public partial class BaseViewModel : ObservableObject
{
    /// <summary>
    /// Gets or sets a value indicating whether the ViewModel is performing an operation.
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
```

---

## Navigation

### Using NavigationService

```csharp
private readonly NavigationService _navigationService;

// Navigate to a page
await _navigationService.NavigateToAsync<DashboardPage>();

// Go back
await _navigationService.GoBackAsync();
```

### Using Shell Navigation

```csharp
// Navigate with route
await Shell.Current.GoToAsync("///dashboard");

// Navigate with parameters
await Shell.Current.GoToAsync("details", new Dictionary<string, object>
{
    { "ItemId", itemId }
});
```

---

## Best Practices

### 1. ✅ DO

- Use feature-based organization for new screens
- Keep code-behind minimal (only InitializeComponent and BindingContext)
- Put all logic in ViewModels
- Use dependency injection for ViewModels
- Inherit from BaseViewModel
- Use `[ObservableProperty]` for bindable properties
- Use `[RelayCommand]` for commands
- Add XML documentation to all public members
- Use IsBusy for loading states

### 2. ❌ DON'T

- Don't put business logic in code-behind
- Don't create ViewModels manually (use DI)
- Don't use static ViewModels
- Don't forget to set BindingContext
- Don't skip XML documentation
- Don't mix organizational patterns in the same feature

---

## Migration Guide (Layered → Feature-Based)

To migrate HomePage from layered to feature-based:

### Before (Layered):
```
Views/HomePage.xaml
Views/HomePage.xaml.cs
ViewModels/HomeViewModel.cs
```

### After (Feature-Based):
```
Presentations/Home/HomePage.xaml
Presentations/Home/HomePage.xaml.cs
Presentations/Home/HomeViewModel.cs
```

### Steps:
1. Create `Presentations/Home/` folder
2. Move `HomePage.xaml` and `HomePage.xaml.cs` to new folder
3. Move `HomeViewModel.cs` to new folder
4. Update namespaces to `FindMyMoney.UI.Presentations.Home`
5. Update using statements in all three files
6. Update `AppDependency.cs` registration
7. Delete old empty folders

---

## Quick Reference

| Aspect | Feature-Based | Layered |
|--------|--------------|---------|
| **Folder** | `/Presentations/{Feature}/` | `/Views/` + `/ViewModels/` |
| **Namespace** | `FindMyMoney.UI.Presentations.{Feature}` | `FindMyMoney.UI.Views/ViewModels` |
| **Files Together** | ✅ Yes | ❌ No |
| **Recommended** | ✅ For new features | ⚠️ Legacy only |
| **Scalability** | ✅ Excellent | ⚠️ Moderate |

---

## Example: Adding a New Feature

### 1. Create Folder Structure
```bash
mkdir Presentations/Expenses
```

### 2. Add Page XAML
```xml
<!-- Presentations/Expenses/ExpenseListPage.xaml -->
<?xml version="1.0" encoding="utf-8" ?>
<ContentPage xmlns="http://schemas.microsoft.com/dotnet/2021/maui"
             xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml"
             xmlns:vm="clr-namespace:FindMyMoney.UI.Presentations.Expenses"
             x:Class="FindMyMoney.UI.Presentations.Expenses.ExpenseListPage"
             x:DataType="vm:ExpenseListViewModel"
             Title="{Binding Title}">
    <!-- UI here -->
</ContentPage>
```

### 3. Add Code-Behind
```csharp
// Presentations/Expenses/ExpenseListPage.xaml.cs
namespace FindMyMoney.UI.Presentations.Expenses;

public partial class ExpenseListPage : ContentPage
{
    public ExpenseListPage(ExpenseListViewModel viewModel)
    {
        InitializeComponent();
        BindingContext = viewModel;
    }
}
```

### 4. Add ViewModel
```csharp
// Presentations/Expenses/ExpenseListViewModel.cs
namespace FindMyMoney.UI.Presentations.Expenses;

public partial class ExpenseListViewModel : BaseViewModel
{
    public ExpenseListViewModel()
    {
        Title = "Expenses";
    }
}
```

### 5. Register in DI
```csharp
// Configurations/AppDependency.cs
services.AddTransient<ExpenseListViewModel>();
services.AddSingleton<ExpenseListPage>();
```

---

**Last Updated:** 2025-12-21
**Current Pattern:** Hybrid (Transitioning to Feature-Based)
**Recommended:** Feature-Based for all new development
