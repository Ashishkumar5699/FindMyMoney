using AutoMapper;
using FindMyMoney.Domain.Common;
using FindMyMoney.Domain.IService;
using FindMyMoney.Domain.Models;
using FindMyMoney.Domain.Repositories;
using Microsoft.Extensions.Logging;

namespace FindMyMoney.Application.Services;

public class StatementService : BaseService<IExpenseRepository>, IStatementService
{
    private readonly IIncomeRepository _incomeRepository;
    private readonly ILogger<StatementService> _logger;

    public StatementService(
        IExpenseRepository repository,
        IIncomeRepository incomeRepository,
        IDialogService dialogService,
        IMapper mapper,
        IUserService userService,
        ILogger<StatementService> logger)
        : base(repository, dialogService, mapper, userService)
    {
        _incomeRepository = incomeRepository;
        _logger = logger;
    }

    public async Task<Result<StatementSummary>> GetStatementAsync(int month, int year)
    {
        try
        {
            var userId = await UserService.GetCurrentUserIdAsync();
            if (userId == Guid.Empty)
                return Result<StatementSummary>.Failure("User not authenticated");

            var startDate = new DateTime(year, month, 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);

            var expensesResult = await Repository.GetByDateRangeAsync(userId, startDate, endDate);
            var incomesResult = await _incomeRepository.GetByDateRangeAsync(userId, startDate, endDate);

            var expenses = expensesResult.IsSuccess ? expensesResult.Data ?? [] : [];
            var incomes = incomesResult.IsSuccess ? incomesResult.Data ?? [] : [];

            var totalExpense = expenses.Sum(e => e.Amount);

            var byCategory = expenses
                .GroupBy(e => string.IsNullOrEmpty(e.Category) ? "Other" : e.Category)
                .Select(g => new CategorySummary
                {
                    Category = g.Key,
                    Total = g.Sum(e => e.Amount),
                    Percentage = totalExpense > 0 ? (double)(g.Sum(e => e.Amount) / totalExpense * 100) : 0,
                    SubCategories = g
                        .GroupBy(e => string.IsNullOrEmpty(e.SubCategory) ? "General" : e.SubCategory)
                        .Select(sg => new SubCategorySummary
                        {
                            SubCategory = sg.Key,
                            Total = sg.Sum(e => e.Amount)
                        })
                        .OrderByDescending(s => s.Total)
                        .ToList()
                })
                .OrderByDescending(c => c.Total)
                .ToList();

            var summary = new StatementSummary
            {
                Month = month,
                Year = year,
                TotalIncome = incomes.Sum(i => i.Amount),
                TotalExpense = totalExpense,
                ExpenseByCategory = byCategory
            };

            return Result<StatementSummary>.Success(summary);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error generating statement for {Month}/{Year}", month, year);
            return Result<StatementSummary>.Failure($"Failed to generate statement: {ex.Message}");
        }
    }
}
