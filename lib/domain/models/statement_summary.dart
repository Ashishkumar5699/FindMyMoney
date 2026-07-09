class SubCategorySummary {
  final String subCategory;
  final double total;

  const SubCategorySummary({required this.subCategory, required this.total});
}

class CategorySummary {
  final String category;
  final double total;
  final double percentage;
  final List<SubCategorySummary> subCategories;

  const CategorySummary({
    required this.category,
    required this.total,
    required this.percentage,
    this.subCategories = const [],
  });
}

class StatementSummary {
  final int month;
  final int year;
  final double totalIncome;
  final double totalExpense;
  final List<CategorySummary> expenseByCategory;

  const StatementSummary({
    required this.month,
    required this.year,
    required this.totalIncome,
    required this.totalExpense,
    this.expenseByCategory = const [],
  });

  double get netBalance => totalIncome - totalExpense;
}
