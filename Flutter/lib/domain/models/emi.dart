class Emi {
  final String id;
  final String userId;
  final String loanName;
  final String bankName;
  final double totalAmount;
  final double emiAmount;
  final int totalEmis;
  final int paidEmis;
  final double interestRate;
  final DateTime startDate;
  final DateTime nextDueDate;
  final String status;
  final String? description;
  final DateTime createdAt;

  const Emi({
    required this.id,
    required this.userId,
    required this.loanName,
    required this.bankName,
    required this.totalAmount,
    required this.emiAmount,
    required this.totalEmis,
    required this.paidEmis,
    required this.interestRate,
    required this.startDate,
    required this.nextDueDate,
    this.status = 'Active',
    this.description,
    required this.createdAt,
  });

  int get remainingEmis => totalEmis - paidEmis;
  double get remainingAmount => emiAmount * remainingEmis;
  double get paidAmount => emiAmount * paidEmis;
  double get progressRatio => totalEmis > 0 ? paidEmis / totalEmis : 0;

  factory Emi.fromJson(Map<String, dynamic> json) => Emi(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        loanName: json['loanName'] as String? ?? '',
        bankName: json['bankName'] as String? ?? '',
        totalAmount: (json['totalAmount'] as num?)?.toDouble() ?? 0,
        emiAmount: (json['emiAmount'] as num?)?.toDouble() ?? 0,
        totalEmis: json['totalEmis'] as int? ?? 0,
        paidEmis: json['paidEmis'] as int? ?? 0,
        interestRate: (json['interestRate'] as num?)?.toDouble() ?? 0,
        startDate: DateTime.parse(json['startDate'] as String),
        nextDueDate: DateTime.parse(json['nextDueDate'] as String),
        status: json['status'] as String? ?? 'Active',
        description: json['description'] as String?,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'loanName': loanName,
        'bankName': bankName,
        'totalAmount': totalAmount,
        'emiAmount': emiAmount,
        'totalEmis': totalEmis,
        'paidEmis': paidEmis,
        'interestRate': interestRate,
        'startDate': startDate.toIso8601String(),
        'nextDueDate': nextDueDate.toIso8601String(),
        'status': status,
        'description': description,
        'createdAt': createdAt.toIso8601String(),
      };

  Emi copyWith({
    String? id,
    String? userId,
    String? loanName,
    String? bankName,
    double? totalAmount,
    double? emiAmount,
    int? totalEmis,
    int? paidEmis,
    double? interestRate,
    DateTime? startDate,
    DateTime? nextDueDate,
    String? status,
    String? description,
    DateTime? createdAt,
  }) =>
      Emi(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        loanName: loanName ?? this.loanName,
        bankName: bankName ?? this.bankName,
        totalAmount: totalAmount ?? this.totalAmount,
        emiAmount: emiAmount ?? this.emiAmount,
        totalEmis: totalEmis ?? this.totalEmis,
        paidEmis: paidEmis ?? this.paidEmis,
        interestRate: interestRate ?? this.interestRate,
        startDate: startDate ?? this.startDate,
        nextDueDate: nextDueDate ?? this.nextDueDate,
        status: status ?? this.status,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
      );
}
