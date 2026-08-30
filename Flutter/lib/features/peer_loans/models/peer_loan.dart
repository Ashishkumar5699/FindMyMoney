class PeerLoan {
  final String id;
  final String contactName;
  final String direction; // GAVE | RECEIVED
  final double amount;
  final double balance;
  final String? description;
  final String verificationToken;
  final String status; // pending | verified | rejected | settled
  final String? rejectionReason;
  final DateTime createdAt;
  final DateTime? verifiedAt;
  final List<PeerLoanRepayment> repayments;

  const PeerLoan({
    required this.id,
    required this.contactName,
    required this.direction,
    required this.amount,
    required this.balance,
    this.description,
    required this.verificationToken,
    required this.status,
    this.rejectionReason,
    required this.createdAt,
    this.verifiedAt,
    this.repayments = const [],
  });

  bool get isGave => direction == 'GAVE';
  bool get isPending => status == 'pending';
  bool get isVerified => status == 'verified';
  bool get isSettled => status == 'settled';
  bool get isRejected => status == 'rejected';

  factory PeerLoan.fromJson(Map<String, dynamic> j) => PeerLoan(
        id: j['id'] as String,
        contactName: j['contactName'] as String,
        direction: j['direction'] as String,
        amount: (j['amount'] as num).toDouble(),
        balance: (j['balance'] as num).toDouble(),
        description: j['description'] as String?,
        verificationToken: j['verificationToken'] as String,
        status: j['status'] as String,
        rejectionReason: j['rejectionReason'] as String?,
        createdAt: DateTime.parse(j['createdAt'] as String),
        verifiedAt: j['verifiedAt'] != null ? DateTime.parse(j['verifiedAt'] as String) : null,
        repayments: (j['repayments'] as List<dynamic>? ?? [])
            .map((r) => PeerLoanRepayment.fromJson(r as Map<String, dynamic>))
            .toList(),
      );
}

class PeerLoanRepayment {
  final String id;
  final String loanId;
  final double amount;
  final String? description;
  final String verificationToken;
  final String status;
  final String? rejectionReason;
  final DateTime createdAt;
  final DateTime? verifiedAt;

  const PeerLoanRepayment({
    required this.id,
    required this.loanId,
    required this.amount,
    this.description,
    required this.verificationToken,
    required this.status,
    this.rejectionReason,
    required this.createdAt,
    this.verifiedAt,
  });

  bool get isPending => status == 'pending';
  bool get isVerified => status == 'verified';
  bool get isRejected => status == 'rejected';

  factory PeerLoanRepayment.fromJson(Map<String, dynamic> j) => PeerLoanRepayment(
        id: j['id'] as String,
        loanId: j['loanId'] as String,
        amount: (j['amount'] as num).toDouble(),
        description: j['description'] as String?,
        verificationToken: j['verificationToken'] as String,
        status: j['status'] as String,
        rejectionReason: j['rejectionReason'] as String?,
        createdAt: DateTime.parse(j['createdAt'] as String),
        verifiedAt: j['verifiedAt'] != null ? DateTime.parse(j['verifiedAt'] as String) : null,
      );
}

class PeerLoanPreview {
  final String loanId;
  final String contactName;
  final String direction;
  final double amount;
  final String? description;
  final String type; // loan | repayment

  const PeerLoanPreview({
    required this.loanId,
    required this.contactName,
    required this.direction,
    required this.amount,
    this.description,
    required this.type,
  });

  factory PeerLoanPreview.fromJson(Map<String, dynamic> j) => PeerLoanPreview(
        loanId: j['loanId'] as String,
        contactName: j['contactName'] as String,
        direction: j['direction'] as String,
        amount: (j['amount'] as num).toDouble(),
        description: j['description'] as String?,
        type: j['type'] as String,
      );
}
