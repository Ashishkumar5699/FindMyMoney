class Expense {
  final String id;
  final String userId;
  final double amount;
  final String category;
  final String subCategory;
  final String description;
  final DateTime date;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const Expense({
    required this.id,
    required this.userId,
    required this.amount,
    required this.category,
    this.subCategory = '',
    this.description = '',
    required this.date,
    required this.createdAt,
    this.updatedAt,
  });

  factory Expense.fromJson(Map<String, dynamic> json) => Expense(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        amount: (json['amount'] as num?)?.toDouble() ?? 0,
        category: json['category'] as String? ?? '',
        subCategory: json['subCategory'] as String? ?? '',
        description: json['description'] as String? ?? '',
        date: DateTime.parse(json['date'] as String),
        createdAt: DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] != null
            ? DateTime.parse(json['updatedAt'] as String)
            : null,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'amount': amount,
        'category': category,
        'subCategory': subCategory,
        'description': description,
        'date': date.toIso8601String(),
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };

  Expense copyWith({
    String? id,
    String? userId,
    double? amount,
    String? category,
    String? subCategory,
    String? description,
    DateTime? date,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Expense(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        amount: amount ?? this.amount,
        category: category ?? this.category,
        subCategory: subCategory ?? this.subCategory,
        description: description ?? this.description,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}
