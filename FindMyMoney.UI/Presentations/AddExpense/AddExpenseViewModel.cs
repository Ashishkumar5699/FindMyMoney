using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.UI.ViewModels;
using Microsoft.Extensions.Logging;
using System.Collections.ObjectModel;

namespace FindMyMoney.Presentations.AddExpense;

/// <summary>
/// ViewModel for the Add Expense page.
/// Handles expense creation with validation.
/// </summary>
public partial class AddExpenseViewModel : BaseViewModel
{
    private readonly IExpenseService _expenseService;
    private readonly ILogger<AddExpenseViewModel> _logger;

    /// <summary>
    /// Gets or sets the expense amount
    /// </summary>
    [ObservableProperty]
    string amount = string.Empty;

    /// <summary>
    /// Gets or sets the selected category
    /// </summary>
    [ObservableProperty]
    string selectedCategory = string.Empty;

    /// <summary>
    /// Gets or sets the expense description
    /// </summary>
    [ObservableProperty]
    string description = string.Empty;

    /// <summary>
    /// Gets or sets the expense date
    /// </summary>
    [ObservableProperty]
    DateTime expenseDate;

    /// <summary>
    /// Gets or sets the error message to display
    /// </summary>
    [ObservableProperty]
    string errorMessage = string.Empty;

    /// <summary>
    /// Gets or sets whether the form is valid
    /// </summary>
    [ObservableProperty]
    bool isFormValid;

    /// <summary>
    /// Collection of available expense categories
    /// </summary>
    public ObservableCollection<string> Categories { get; } = new()
    {
        "Food & Dining",
        "Transportation",
        "Shopping",
        "Entertainment",
        "Bills & Utilities",
        "Healthcare",
        "Education",
        "Travel",
        "Groceries",
        "Personal Care",
        "Home & Garden",
        "Insurance",
        "Gifts & Donations",
        "Other"
    };

    /// <summary>
    /// Initializes a new instance of the AddExpenseViewModel
    /// </summary>
    public AddExpenseViewModel(
        IExpenseService expenseService,
        ILogger<AddExpenseViewModel> logger)
    {
        _expenseService = expenseService;
        _logger = logger;

        Title = "Add Expense";

        // Set default category
        SelectedCategory = Categories.First();
        
        // Initialize expense date to current date
        ExpenseDate = DateTime.Now;
    }

    /// <summary>
    /// Validates the form and updates IsFormValid property
    /// </summary>
    partial void OnAmountChanged(string value)
    {
        ValidateForm();
    }

    /// <summary>
    /// Validates the form when category changes
    /// </summary>
    partial void OnSelectedCategoryChanged(string value)
    {
        ValidateForm();
    }

    /// <summary>
    /// Validates the form when description changes
    /// </summary>
    partial void OnDescriptionChanged(string value)
    {
        ValidateForm();
    }

    /// <summary>
    /// Validates all form fields
    /// </summary>
    private void ValidateForm()
    {
        ErrorMessage = string.Empty;

        // Validate amount
        if (string.IsNullOrWhiteSpace(Amount))
        {
            IsFormValid = false;
            return;
        }

        if (!decimal.TryParse(Amount, out var amountValue) || amountValue <= 0)
        {
            ErrorMessage = "Please enter a valid amount greater than 0";
            IsFormValid = false;
            return;
        }

        // Validate category
        if (string.IsNullOrWhiteSpace(SelectedCategory))
        {
            ErrorMessage = "Please select a category";
            IsFormValid = false;
            return;
        }

        // Validate description (optional but recommended)
        if (string.IsNullOrWhiteSpace(Description))
        {
            // Description is optional, but we'll show a hint
            // Still valid
        }

        IsFormValid = true;
    }

    /// <summary>
    /// Saves the expense and navigates back
    /// </summary>
    [RelayCommand]
    private async Task SaveExpense()
    {
        if (IsBusy)
            return;

        try
        {
            IsBusy = true;
            ErrorMessage = string.Empty;

            // Validate form
            ValidateForm();
            if (!IsFormValid)
            {
                _logger.LogWarning("Form validation failed");
                return;
            }

            // Parse amount
            if (!decimal.TryParse(Amount, out var amountValue))
            {
                ErrorMessage = "Invalid amount";
                return;
            }

            // Create expense object
            var expense = new Expense
            {
                Amount = amountValue,
                Category = SelectedCategory,
                Description = Description,
                Date = ExpenseDate
            };

            _logger.LogInformation("Creating expense - Amount: {Amount}, Category: {Category}",
                amountValue, SelectedCategory);

            // Save expense via service
            var result = await _expenseService.CreateExpenseAsync(expense);

            if (result != null && result.IsSuccess)
            {
                _logger.LogInformation("Expense created successfully");

                // Navigate back to previous page
                await Shell.Current.GoToAsync("..");
            }
            else
            {
                ErrorMessage = result?.Error ?? "Unknown error occurred";
                _logger.LogWarning("Failed to create expense: {Error}", result?.Error);
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = "An unexpected error occurred while saving the expense";
            _logger.LogError(ex, "Error saving expense");
        }
        finally
        {
            IsBusy = false;
        }
    }

    /// <summary>
    /// Cancels the operation and navigates back
    /// </summary>
    [RelayCommand]
    private async Task Cancel()
    {
        _logger.LogInformation("Add expense cancelled");
        await Shell.Current.GoToAsync("..");
    }

    /// <summary>
    /// Clears all form fields
    /// </summary>
    [RelayCommand]
    private void ClearForm()
    {
        Amount = string.Empty;
        Description = string.Empty;
        ExpenseDate = DateTime.Now;
        SelectedCategory = Categories.First();
        ErrorMessage = string.Empty;

        _logger.LogInformation("Form cleared");
    }
}
