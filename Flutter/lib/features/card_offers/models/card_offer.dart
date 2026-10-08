class CardOffer {
  final String id;
  final String paymentSourceId;
  final String cardName;
  final String title;
  final String? description;
  final String? merchant;
  final String? category;
  final double? discountPercent;
  final double? maxDiscount;
  final double? minTransaction;
  final DateTime? validUntil;
  final String source;
  final bool isExpired;

  const CardOffer({
    required this.id,
    required this.paymentSourceId,
    required this.cardName,
    required this.title,
    this.description,
    this.merchant,
    this.category,
    this.discountPercent,
    this.maxDiscount,
    this.minTransaction,
    this.validUntil,
    required this.source,
    required this.isExpired,
  });

  factory CardOffer.fromJson(Map<String, dynamic> j) => CardOffer(
        id: j['id'],
        paymentSourceId: j['paymentSourceId'],
        cardName: j['cardName'] ?? '',
        title: j['title'],
        description: j['description'],
        merchant: j['merchant'],
        category: j['category'],
        discountPercent: (j['discountPercent'] as num?)?.toDouble(),
        maxDiscount: (j['maxDiscount'] as num?)?.toDouble(),
        minTransaction: (j['minTransaction'] as num?)?.toDouble(),
        validUntil: j['validUntil'] != null ? DateTime.parse(j['validUntil']) : null,
        source: j['source'] ?? 'manual',
        isExpired: j['isExpired'] ?? false,
      );
}

class CardBenefit {
  final String id;
  final String paymentSourceId;
  final String category;
  final double cashbackPercent;
  final int rewardPointsPerHundred;
  final String? notes;

  const CardBenefit({
    required this.id,
    required this.paymentSourceId,
    required this.category,
    required this.cashbackPercent,
    required this.rewardPointsPerHundred,
    this.notes,
  });

  factory CardBenefit.fromJson(Map<String, dynamic> j) => CardBenefit(
        id: j['id'],
        paymentSourceId: j['paymentSourceId'],
        category: j['category'],
        cashbackPercent: (j['cashbackPercent'] as num).toDouble(),
        rewardPointsPerHundred: j['rewardPointsPerHundred'] ?? 0,
        notes: j['notes'],
      );
}

class CardSuggestion {
  final String paymentSourceId;
  final String cardName;
  final String? bankName;
  final String reason;
  final double cashbackPercent;
  final int rewardPoints;
  final List<CardOffer> relevantOffers;

  const CardSuggestion({
    required this.paymentSourceId,
    required this.cardName,
    this.bankName,
    required this.reason,
    required this.cashbackPercent,
    required this.rewardPoints,
    required this.relevantOffers,
  });

  factory CardSuggestion.fromJson(Map<String, dynamic> j) => CardSuggestion(
        paymentSourceId: j['paymentSourceId'],
        cardName: j['cardName'],
        bankName: j['bankName'],
        reason: j['reason'],
        cashbackPercent: (j['cashbackPercent'] as num).toDouble(),
        rewardPoints: j['rewardPoints'] ?? 0,
        relevantOffers: (j['relevantOffers'] as List? ?? [])
            .map((o) => CardOffer.fromJson(o))
            .toList(),
      );
}
