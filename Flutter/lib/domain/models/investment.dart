class Investment {
  final String id;
  final String userId;
  final String name;
  final String type;
  final double amount;
  final double currentValue;
  final DateTime date;
  final String? notes;
  final DateTime createdAt;

  const Investment({
    required this.id,
    required this.userId,
    required this.name,
    required this.type,
    required this.amount,
    required this.currentValue,
    required this.date,
    this.notes,
    required this.createdAt,
  });

  double get profitLoss => currentValue - amount;
  bool get isProfit => profitLoss >= 0;
  double get profitLossPercent =>
      amount > 0 ? (profitLoss / amount) * 100 : 0;

  factory Investment.fromJson(Map<String, dynamic> json) => Investment(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        name: json['name'] as String? ?? '',
        type: json['type'] as String? ?? '',
        amount: (json['amount'] as num?)?.toDouble() ?? 0,
        currentValue: (json['currentValue'] as num?)?.toDouble() ?? 0,
        date: DateTime.parse(json['date'] as String),
        notes: json['notes'] as String?,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'name': name,
        'type': type,
        'amount': amount,
        'currentValue': currentValue,
        'date': date.toIso8601String(),
        'notes': notes,
        'createdAt': createdAt.toIso8601String(),
      };

  Investment copyWith({
    String? id,
    String? userId,
    String? name,
    String? type,
    double? amount,
    double? currentValue,
    DateTime? date,
    String? notes,
    DateTime? createdAt,
  }) =>
      Investment(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        name: name ?? this.name,
        type: type ?? this.type,
        amount: amount ?? this.amount,
        currentValue: currentValue ?? this.currentValue,
        date: date ?? this.date,
        notes: notes ?? this.notes,
        createdAt: createdAt ?? this.createdAt,
      );
}
