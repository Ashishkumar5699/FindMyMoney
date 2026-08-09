class PaymentSource {
  final String id;
  final String userId;
  final String name;
  final String type;
  final String? accountLast4;
  final String? bankName;
  final double? creditLimit;
  final int? billingCycleDay;
  final int? dueDaysAfterBilling;
  final double balance;
  final bool isActive;
  final DateTime createdAt;

  const PaymentSource({
    required this.id,
    required this.userId,
    required this.name,
    required this.type,
    this.accountLast4,
    this.bankName,
    this.creditLimit,
    this.billingCycleDay,
    this.dueDaysAfterBilling,
    required this.balance,
    this.isActive = true,
    required this.createdAt,
  });

  factory PaymentSource.fromJson(Map<String, dynamic> json) => PaymentSource(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        name: json['name'] as String? ?? '',
        type: json['type'] as String? ?? '',
        accountLast4: json['accountLast4'] as String?,
        bankName: json['bankName'] as String?,
        creditLimit: (json['creditLimit'] as num?)?.toDouble(),
        billingCycleDay: json['billingCycleDay'] as int?,
        dueDaysAfterBilling: json['dueDaysAfterBilling'] as int?,
        balance: (json['balance'] as num?)?.toDouble() ?? 0,
        isActive: json['isActive'] as bool? ?? true,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'name': name,
        'type': type,
        'accountLast4': accountLast4,
        'bankName': bankName,
        'creditLimit': creditLimit,
        'billingCycleDay': billingCycleDay,
        'dueDaysAfterBilling': dueDaysAfterBilling,
        'balance': balance,
        'isActive': isActive,
        'createdAt': createdAt.toIso8601String(),
      };

  PaymentSource copyWith({
    String? id,
    String? userId,
    String? name,
    String? type,
    String? accountLast4,
    String? bankName,
    double? creditLimit,
    int? billingCycleDay,
    int? dueDaysAfterBilling,
    double? balance,
    bool? isActive,
    DateTime? createdAt,
  }) =>
      PaymentSource(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        name: name ?? this.name,
        type: type ?? this.type,
        accountLast4: accountLast4 ?? this.accountLast4,
        bankName: bankName ?? this.bankName,
        creditLimit: creditLimit ?? this.creditLimit,
        billingCycleDay: billingCycleDay ?? this.billingCycleDay,
        dueDaysAfterBilling: dueDaysAfterBilling ?? this.dueDaysAfterBilling,
        balance: balance ?? this.balance,
        isActive: isActive ?? this.isActive,
        createdAt: createdAt ?? this.createdAt,
      );
}
