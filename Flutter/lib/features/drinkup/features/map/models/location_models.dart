class FriendLocation {
  final String accountId;
  final String displayName;
  final String userName;
  final String avatarUrl;
  final String phone;
  final double latitude;
  final double longitude;
  final DateTime locationUpdatedAt;

  const FriendLocation({
    required this.accountId,
    required this.displayName,
    required this.userName,
    required this.avatarUrl,
    required this.phone,
    required this.latitude,
    required this.longitude,
    required this.locationUpdatedAt,
  });

  factory FriendLocation.fromJson(Map<String, dynamic> j) => FriendLocation(
    accountId:         j['accountId'] as String,
    displayName:       j['displayName'] as String? ?? '',
    userName:          j['userName'] as String? ?? '',
    avatarUrl:         j['avatarUrl'] as String? ?? '',
    phone:             j['phone'] as String? ?? '',
    latitude:          (j['latitude'] as num).toDouble(),
    longitude:         (j['longitude'] as num).toDouble(),
    locationUpdatedAt: DateTime.parse(j['locationUpdatedAt'] as String),
  );
}

class MyLocationStatus {
  final bool shareLocation;
  final double? lastLatitude;
  final double? lastLongitude;
  final DateTime? locationUpdatedAt;

  const MyLocationStatus({
    required this.shareLocation,
    this.lastLatitude,
    this.lastLongitude,
    this.locationUpdatedAt,
  });

  factory MyLocationStatus.fromJson(Map<String, dynamic> j) => MyLocationStatus(
    shareLocation:     j['shareLocation'] as bool? ?? false,
    lastLatitude:      (j['lastLatitude'] as num?)?.toDouble(),
    lastLongitude:     (j['lastLongitude'] as num?)?.toDouble(),
    locationUpdatedAt: j['locationUpdatedAt'] != null
        ? DateTime.parse(j['locationUpdatedAt'] as String)
        : null,
  );
}
