namespace FindMyMoney.Domain.Models;

public class CategorySummary
{
    public string Category { get; set; } = string.Empty;
    public decimal Total { get; set; }
    public double Percentage { get; set; }
    public List<SubCategorySummary> SubCategories { get; set; } = [];
}

public class SubCategorySummary
{
    public string SubCategory { get; set; } = string.Empty;
    public decimal Total { get; set; }
}

public class StatementSummary
{
    public int Month { get; set; }
    public int Year { get; set; }
    public decimal TotalIncome { get; set; }
    public decimal TotalExpense { get; set; }
    public decimal NetBalance => TotalIncome - TotalExpense;
    public List<CategorySummary> ExpenseByCategory { get; set; } = [];
}
