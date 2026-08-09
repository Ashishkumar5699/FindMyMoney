class KhataContact {
  final String id;
  final String name;
  final String? notes;
  final double balance;
  final DateTime createdAt;

  const KhataContact({
    required this.id,
    required this.name,
    this.notes,
    required this.balance,
    required this.createdAt,
  });

  factory KhataContact.fromJson(Map<String, dynamic> json) => KhataContact(
        id: json['id'] as String? ?? '',
        name: json['name'] as String? ?? '',
        notes: json['notes'] as String?,
        balance: (json['balance'] as num?)?.toDouble() ?? 0,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  KhataContact copyWith({String? id, String? name, String? notes, double? balance, DateTime? createdAt}) =>
      KhataContact(
        id: id ?? this.id,
        name: name ?? this.name,
        notes: notes ?? this.notes,
        balance: balance ?? this.balance,
        createdAt: createdAt ?? this.createdAt,
      );
}

class KhataTransaction {
  final String id;
  final String contactId;
  final double amount;
  final String type; // 'Gave' or 'Received'
  final String? notes;
  final DateTime date;
  final DateTime createdAt;

  const KhataTransaction({
    required this.id,
    required this.contactId,
    required this.amount,
    required this.type,
    this.notes,
    required this.date,
    required this.createdAt,
  });

  factory KhataTransaction.fromJson(Map<String, dynamic> json) => KhataTransaction(
        id: json['id'] as String? ?? '',
        contactId: json['contactId'] as String? ?? '',
        amount: (json['amount'] as num?)?.toDouble() ?? 0,
        type: json['type'] as String? ?? 'Gave',
        notes: json['notes'] as String?,
        date: DateTime.parse(json['date'] as String),
        createdAt: DateTime.parse(json['createdAt'] as String),
      );
}
