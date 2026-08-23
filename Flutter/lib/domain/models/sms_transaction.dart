class SmsTransaction {
  final String id;
  final String rawSms;
  final String sender;
  final double amount;
  final String type; // 'expense' | 'income'
  final String? merchant;
  final String? suggestedCategory;
  final String? date;
  final double confidence;
  final DateTime detectedAt;

  const SmsTransaction({
    required this.id,
    required this.rawSms,
    required this.sender,
    required this.amount,
    required this.type,
    this.merchant,
    this.suggestedCategory,
    this.date,
    this.confidence = 0.0,
    required this.detectedAt,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'rawSms': rawSms,
        'sender': sender,
        'amount': amount,
        'type': type,
        'merchant': merchant,
        'suggestedCategory': suggestedCategory,
        'date': date,
        'confidence': confidence,
        'detectedAt': detectedAt.toIso8601String(),
      };

  factory SmsTransaction.fromMap(Map<String, dynamic> m) => SmsTransaction(
        id: m['id'] as String,
        rawSms: m['rawSms'] as String,
        sender: m['sender'] as String,
        amount: (m['amount'] as num).toDouble(),
        type: m['type'] as String,
        merchant: m['merchant'] as String?,
        suggestedCategory: m['suggestedCategory'] as String?,
        date: m['date'] as String?,
        confidence: (m['confidence'] as num?)?.toDouble() ?? 0.0,
        detectedAt: DateTime.parse(m['detectedAt'] as String),
      );
}
