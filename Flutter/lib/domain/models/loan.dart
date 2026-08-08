class Loan {
  final String id;
  final String userId;
  final String contactName;
  final double amount;
  final double paidAmount;
  final double remainingAmount;
  final String direction;
  final DateTime date;
  final String? notes;
  final String status;
  final DateTime? settledAt;
  final DateTime createdAt;

  const Loan({
    required this.id,
    required this.userId,
    required this.contactName,
    required this.amount,
    required this.paidAmount,
    required this.remainingAmount,
    required this.direction,
    required this.date,
    this.notes,
    this.status = 'Active',
    this.settledAt,
    required this.createdAt,
  });

  factory Loan.fromJson(Map<String, dynamic> json) => Loan(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        contactName: json['contactName'] as String? ?? '',
        amount: (json['amount'] as num?)?.toDouble() ?? 0,
        paidAmount: (json['paidAmount'] as num?)?.toDouble() ?? 0,
        remainingAmount: (json['remainingAmount'] as num?)?.toDouble() ?? 0,
        direction: json['direction'] as String? ?? 'Lent',
        date: DateTime.parse(json['date'] as String),
        notes: json['notes'] as String?,
        status: json['status'] as String? ?? 'Active',
        settledAt: json['settledAt'] != null
            ? DateTime.parse(json['settledAt'] as String)
            : null,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'contactName': contactName,
        'amount': amount,
        'paidAmount': paidAmount,
        'remainingAmount': remainingAmount,
        'direction': direction,
        'date': date.toIso8601String(),
        'notes': notes,
        'status': status,
        'settledAt': settledAt?.toIso8601String(),
        'createdAt': createdAt.toIso8601String(),
      };

  Loan copyWith({
    String? id,
    String? userId,
    String? contactName,
    double? amount,
    double? paidAmount,
    double? remainingAmount,
    String? direction,
    DateTime? date,
    String? notes,
    String? status,
    DateTime? settledAt,
    DateTime? createdAt,
  }) =>
      Loan(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        contactName: contactName ?? this.contactName,
        amount: amount ?? this.amount,
        paidAmount: paidAmount ?? this.paidAmount,
        remainingAmount: remainingAmount ?? this.remainingAmount,
        direction: direction ?? this.direction,
        date: date ?? this.date,
        notes: notes ?? this.notes,
        status: status ?? this.status,
        settledAt: settledAt ?? this.settledAt,
        createdAt: createdAt ?? this.createdAt,
      );
}
