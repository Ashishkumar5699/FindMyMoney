class PlanModel {
  final String   planId;
  final String   title;
  final String   venueName;
  final String   address;
  final double   latitude;
  final double   longitude;
  final DateTime scheduledAt;
  final String   status;
  final String   notes;
  final String   creatorName;
  final int      inviteCount;
  final bool     isCreator;
  final String?  myRsvp;

  const PlanModel({
    required this.planId,
    required this.title,
    required this.venueName,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.scheduledAt,
    required this.status,
    required this.notes,
    required this.creatorName,
    required this.inviteCount,
    required this.isCreator,
    this.myRsvp,
  });

  factory PlanModel.fromJson(Map<String, dynamic> j) => PlanModel(
    planId:      j['planId']      ?? '',
    title:       j['title']       ?? '',
    venueName:   j['venueName']   ?? '',
    address:     j['address']     ?? '',
    latitude:    (j['latitude']   ?? 0).toDouble(),
    longitude:   (j['longitude']  ?? 0).toDouble(),
    scheduledAt: DateTime.tryParse(j['scheduledAt'] ?? '') ?? DateTime.now(),
    status:      j['status']      ?? '',
    notes:       j['notes']       ?? '',
    creatorName: j['creatorName'] ?? '',
    inviteCount: j['inviteCount'] ?? 0,
    isCreator:   j['isCreator']   ?? false,
    myRsvp:      j['myRsvp'],
  );

  bool get isActive       => status == 'Active';
  bool get isCancelled    => status == 'Cancelled';
  bool get needsRsvp      => !isCreator && myRsvp == 'Pending';
}
