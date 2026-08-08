class CcBill {
  final String id;
  final String userId;
  final String paymentSourceId;
  final String? paymentSourceName;
  final int billingMonth;
  final int billingYear;
  final double totalAmount;
  final String dueDate;
  final String status;
  final DateTime createdAt;

  const CcBill({
    required this.id,
    required this.userId,
    required this.paymentSourceId,
    this.paymentSourceName,
    required this.billingMonth,
    required this.billingYear,
    required this.totalAmount,
    required this.dueDate,
    this.status = 'Unpaid',
    required this.createdAt,
  });

  factory CcBill.fromJson(Map<String, dynamic> json) => CcBill(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        paymentSourceId: json['paymentSourceId'] as String? ?? '',
        paymentSourceName: json['paymentSourceName'] as String?,
        billingMonth: json['billingMonth'] as int? ?? 1,
        billingYear: json['billingYear'] as int? ?? DateTime.now().year,
        totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0,
        dueDate: json['dueDate'] as String? ?? '',
        status: json['status'] as String? ?? 'Unpaid',
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'paymentSourceId': paymentSourceId,
        'paymentSourceName': paymentSourceName,
        'billingMonth': billingMonth,
        'billingYear': billingYear,
        'totalAmount': totalAmount,
        'dueDate': dueDate,
        'status': status,
        'createdAt': createdAt.toIso8601String(),
      };

  CcBill copyWith({
    String? id,
    String? userId,
    String? paymentSourceId,
    String? paymentSourceName,
    int? billingMonth,
    int? billingYear,
    double? totalAmount,
    String? dueDate,
    String? status,
    DateTime? createdAt,
  }) =>
      CcBill(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        paymentSourceId: paymentSourceId ?? this.paymentSourceId,
        paymentSourceName: paymentSourceName ?? this.paymentSourceName,
        billingMonth: billingMonth ?? this.billingMonth,
        billingYear: billingYear ?? this.billingYear,
        totalAmount: totalAmount ?? this.totalAmount,
        dueDate: dueDate ?? this.dueDate,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
      );
}
