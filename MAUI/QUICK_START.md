# FindMyMoney - Quick Start Guide

## Project Overview

FindMyMoney is a .NET 10 MAUI cross-platform expense tracking application built with Clean Architecture principles.

---

## Architecture Layers

```
┌─────────────────────────────────────────┐
│           UI Layer (MAUI)               │
│  ViewModels, Pages, Views               │
└──────────────┬──────────────────────────┘
               │
┌──────────────▼──────────────────────────┐
│      Application Layer                  │
│  Commands, Queries, DTOs, Use Cases     │
└──────────────┬──────────────────────────┘
               │
        ┌──────┴──────┐
        │             │
┌───────▼─────┐ ┌────▼──────────────────┐
│   Domain    │ │  Infrastructure       │
│  Entities   │ │  Services, Repos      │
│  Interfaces │ │  Data Access          │
└─────────────┘ └───────────────────────┘
```

---

## Getting Started

### 1. Prerequisites
- .NET 10 SDK
- Visual Studio 2025 or VS Code
- iOS development tools (for iOS builds)

### 2. Build the Project
```bash
cd /Users/ashishkumar/Projects/PNJB/FindMyMoney
dotnet restore
dotnet build
```

### 3. Run the Application
```bash
cd FindMyMoney.UI
dotnet run
```

---

## Key Concepts

### Result Pattern

Instead of throwing exceptions, use the Result pattern:

```csharp
// Good ✅
var result = await _authService.LoginAsync(username, password);
if (result.IsSuccess)
{
    // Handle success
    var user = result.Data;
}
else
{
    // Handle failure
    var error = result.Error;
}

// Bad ❌
try
{
    await _authService.LoginAsync(username, password);
}
catch (Exception ex)
{
    // Exception handling
}
```

### CQRS Pattern

Separate read and write operations:

```csharp
// Commands (Write)
var command = new CreateExpenseCommand
{
    UserId = 1,
    Amount = 50.00m,
    Category = "Food",
    Date = DateTime.Now
};
var result = await handler.HandleAsync(command);

// Queries (Read)
var query = new GetExpensesQuery
{
    UserId = 1,
    StartDate = DateTime.Now.AddMonths(-1)
};
var expenses = await handler.HandleAsync(query);
```

### Dependency Injection

Services are automatically injected:

```csharp
// In ViewModel
public class LoginViewModel : BaseViewModel
{
    private readonly IAuthService _authService;
    private readonly ILogger<LoginViewModel> _logger;

    public LoginViewModel(
        IAuthService authService,
        ILogger<LoginViewModel> logger)
    {
        _authService = authService;
        _logger = logger;
    }
}
```

---

## Common Tasks

### Adding a New Repository

1. **Define Interface in Domain:**
```csharp
// FindMyMoney.Domain/Repositories/ICategoryRepository.cs
public interface ICategoryRepository
{
    Task<Result<Category>> GetByIdAsync(int id);
    Task<Result<List<Category>>> GetAllAsync();
}
```

2. **Implement in Infrastructure:**
```csharp
// FindMyMoney.Infrastructure/Repositories/CategoryRepository.cs
public class CategoryRepository : ICategoryRepository
{
    private readonly ILogger<CategoryRepository> _logger;

    public CategoryRepository(ILogger<CategoryRepository> logger)
    {
        _logger = logger;
    }

    // Implement methods...
}
```

3. **Register in DI:**
```csharp
// FindMyMoney.Infrastructure/InfrastructureRegistration.cs
services.AddScoped<ICategoryRepository, CategoryRepository>();
```

### Adding a New Command

1. **Create Command:**
```csharp
// FindMyMoney.Application/Commands/DeleteExpenseCommand.cs
public class DeleteExpenseCommand
{
    public int ExpenseId { get; set; }
    public int UserId { get; set; }
}

public interface IDeleteExpenseCommandHandler
{
    Task<Result> HandleAsync(DeleteExpenseCommand command);
}
```

2. **Implement Handler:**
```csharp
public class DeleteExpenseCommandHandler : IDeleteExpenseCommandHandler
{
    private readonly IExpenseRepository _expenseRepository;
    private readonly ILogger<DeleteExpenseCommandHandler> _logger;

    public async Task<Result> HandleAsync(DeleteExpenseCommand command)
    {
        // Validation
        // Business logic
        // Call repository
    }
}
```

3. **Register in DI:**
```csharp
services.AddScoped<IDeleteExpenseCommandHandler, DeleteExpenseCommandHandler>();
```

### Adding a New Page/ViewModel

1. **Create ViewModel:**
```csharp
// FindMyMoney.UI/ViewModels/ExpenseListViewModel.cs
public partial class ExpenseListViewModel : BaseViewModel
{
    private readonly ILogger<ExpenseListViewModel> _logger;

    [ObservableProperty]
    ObservableCollection<Expense> expenses = new();

    public ExpenseListViewModel(ILogger<ExpenseListViewModel> logger)
    {
        _logger = logger;
        Title = "Expenses";
    }

    [RelayCommand]
    private async Task LoadExpenses()
    {
        // Load logic
    }
}
```

2. **Create Page:**
```xml
<!-- FindMyMoney.UI/Pages/ExpenseListPage.xaml -->
<ContentPage xmlns="http://schemas.microsoft.com/dotnet/2021/maui"
             Title="{Binding Title}">
    <!-- UI markup -->
</ContentPage>
```

3. **Register in DI:**
```csharp
// FindMyMoney.UI/Configurations/AppDependency.cs
services.AddTransient<ExpenseListViewModel>();
services.AddSingleton<ExpenseListPage>();
```

---

## Project Structure

```
FindMyMoney/
│
├── FindMyMoney.Domain/              # Core business logic
│   ├── Common/                      # Shared utilities (Result, etc.)
│   ├── Models/                      # Domain entities
│   ├── Repositories/                # Repository interfaces
│   └── IService/                    # Service interfaces
│
├── FindMyMoney.Application/         # Application business rules
│   ├── Commands/                    # Write operations
│   ├── Queries/                     # Read operations
│   ├── DTOs/                        # Data transfer objects
│   └── Configurations/              # DI setup
│
├── FindMyMoney.Infrastructure/      # External concerns
│   ├── Services/                    # Service implementations
│   ├── Repositories/                # Repository implementations
│   └── InfrastructureRegistration.cs
│
├── FindMyMoney.UI/                  # Presentation layer (MAUI)
│   ├── ViewModels/                  # Presentation logic
│   ├── Pages/                       # XAML pages
│   ├── Presentations/               # Complex page presentations
│   ├── Helpers/                     # UI utilities
│   └── Configurations/              # UI DI setup
│
└── FindMyMoney.Tests/               # Unit tests
```

---

## Best Practices

### ✅ DO

- Use Result pattern for error handling
- Log important operations
- Keep ViewModels in UI layer
- Use CQRS for complex operations
- Inject dependencies through constructor
- Use async/await consistently
- Validate input in Application layer

### ❌ DON'T

- Don't throw exceptions for business logic failures
- Don't use Singleton for repositories
- Don't put ViewModels in Application layer
- Don't reference Infrastructure from Domain
- Don't put business logic in ViewModels
- Don't use static classes for services
- Don't skip logging

---

## Next Steps

1. **Add Database**
   - Install SQLite or Entity Framework Core
   - Implement database context
   - Update repositories with actual database calls

2. **Add API Integration**
   - Install Refit package
   - Define API interfaces
   - Configure HTTP client

3. **Add Authentication**
   - Implement secure password hashing
   - Add token management
   - Implement session handling

4. **Add Validation**
   - Install FluentValidation
   - Create validators for commands
   - Integrate with application layer

5. **Add Navigation**
   - Configure Shell navigation
   - Implement deep linking
   - Add navigation service

---

## Useful Commands

```bash
# Build solution
dotnet build

# Run tests
dotnet test

# Clean build artifacts
dotnet clean

# Add package
dotnet add [project] package [package-name]

# Create new class
dotnet new class -n [ClassName] -o [OutputDirectory]

# Run specific project
dotnet run --project FindMyMoney.UI
```

---

## Troubleshooting

### Build Errors

1. **Missing dependencies:**
   ```bash
   dotnet restore
   ```

2. **Namespace conflicts:**
   - Check using statements
   - Verify project references

3. **DI registration errors:**
   - Ensure all services are registered
   - Check service lifetimes (Singleton, Scoped, Transient)

### Runtime Errors

1. **DI resolution fails:**
   - Check registration order
   - Verify interfaces match implementations

2. **Navigation errors:**
   - Ensure pages are registered
   - Check route configuration

---

## Resources

- [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [CQRS Pattern](https://docs.microsoft.com/en-us/azure/architecture/patterns/cqrs)
- [.NET MAUI Documentation](https://docs.microsoft.com/en-us/dotnet/maui/)
- [Result Pattern](https://enterprisecraftsmanship.com/posts/error-handling-exception-or-result/)

---

**Last Updated:** 2025-12-21
