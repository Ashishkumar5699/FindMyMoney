class Income {
  final String id;
  final String userId;
  final double amount;
  final String source;
  final String description;
  final DateTime date;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const Income({
    required this.id,
    required this.userId,
    required this.amount,
    this.source = '',
    this.description = '',
    required this.date,
    required this.createdAt,
    this.updatedAt,
  });

  factory Income.fromJson(Map<String, dynamic> json) => Income(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        amount: (json['amount'] as num?)?.toDouble() ?? 0,
        source: json['source'] as String? ?? '',
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
        'source': source,
        'description': description,
        'date': date.toIso8601String(),
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };

  Income copyWith({
    String? id,
    String? userId,
    double? amount,
    String? source,
    String? description,
    DateTime? date,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Income(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        amount: amount ?? this.amount,
        source: source ?? this.source,
        description: description ?? this.description,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
}
