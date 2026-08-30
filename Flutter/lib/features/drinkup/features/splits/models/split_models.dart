class SplitShareModel {
  final String  accountId;
  final String  displayName;
  final double  amount;
  final bool    settled;

  const SplitShareModel({
    required this.accountId,
    required this.displayName,
    required this.amount,
    required this.settled,
  });

  factory SplitShareModel.fromJson(Map<String, dynamic> j) => SplitShareModel(
    accountId:   j['accountId']   ?? '',
    displayName: j['displayName'] ?? '',
    amount:      (j['amount']     ?? 0).toDouble(),
    settled:     j['settled']     ?? false,
  );
}

class SplitModel {
  final String            splitId;
  final String            planId;
  final String            planTitle;
  final String            paidByName;
  final double            totalAmount;
  final String            currency;
  final String            description;
  final DateTime          createdAt;
  final List<SplitShareModel> shares;

  const SplitModel({
    required this.splitId,
    required this.planId,
    required this.planTitle,
    required this.paidByName,
    required this.totalAmount,
    required this.currency,
    required this.description,
    required this.createdAt,
    required this.shares,
  });

  factory SplitModel.fromJson(Map<String, dynamic> j) => SplitModel(
    splitId:     j['splitId']     ?? '',
    planId:      j['planId']      ?? '',
    planTitle:   j['planTitle']   ?? '',
    paidByName:  j['paidByName']  ?? '',
    totalAmount: (j['totalAmount'] ?? 0).toDouble(),
    currency:    j['currency']    ?? 'INR',
    description: j['description'] ?? '',
    createdAt:   DateTime.tryParse(j['createdAt'] ?? '') ?? DateTime.now(),
    shares:      (j['shares'] as List? ?? [])
        .map((e) => SplitShareModel.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  );

  String get formattedAmount => '${currency == 'INR' ? '₹' : currency} ${totalAmount.toStringAsFixed(0)}';

  SplitShareModel? myShare(String accountId) =>
      shares.where((s) => s.accountId == accountId).firstOrNull;

  int get settledCount  => shares.where((s) => s.settled).length;
  bool get fullySettled => shares.every((s) => s.settled);
}
