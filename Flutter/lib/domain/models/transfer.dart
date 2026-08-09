class Transfer {
  final String id;
  final String userId;
  final String fromSourceId;
  final String? fromSourceName;
  final String? toSourceId;
  final String? toSourceName;
  final double amount;
  final DateTime date;
  final String? notes;
  final DateTime createdAt;

  const Transfer({
    required this.id,
    required this.userId,
    required this.fromSourceId,
    this.fromSourceName,
    this.toSourceId,
    this.toSourceName,
    required this.amount,
    required this.date,
    this.notes,
    required this.createdAt,
  });

  factory Transfer.fromJson(Map<String, dynamic> json) => Transfer(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        fromSourceId: json['fromSourceId'] as String? ?? '',
        fromSourceName: json['fromSourceName'] as String?,
        toSourceId: json['toSourceId'] as String?,
        toSourceName: json['toSourceName'] as String?,
        amount: (json['amount'] as num?)?.toDouble() ?? 0,
        date: DateTime.parse(json['date'] as String),
        notes: json['notes'] as String?,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'fromSourceId': fromSourceId,
        'fromSourceName': fromSourceName,
        'toSourceId': toSourceId,
        'toSourceName': toSourceName,
        'amount': amount,
        'date': date.toIso8601String(),
        'notes': notes,
        'createdAt': createdAt.toIso8601String(),
      };

  Transfer copyWith({
    String? id,
    String? userId,
    String? fromSourceId,
    String? fromSourceName,
    String? toSourceId,
    String? toSourceName,
    double? amount,
    DateTime? date,
    String? notes,
    DateTime? createdAt,
  }) =>
      Transfer(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        fromSourceId: fromSourceId ?? this.fromSourceId,
        fromSourceName: fromSourceName ?? this.fromSourceName,
        toSourceId: toSourceId ?? this.toSourceId,
        toSourceName: toSourceName ?? this.toSourceName,
        amount: amount ?? this.amount,
        date: date ?? this.date,
        notes: notes ?? this.notes,
        createdAt: createdAt ?? this.createdAt,
      );
}
