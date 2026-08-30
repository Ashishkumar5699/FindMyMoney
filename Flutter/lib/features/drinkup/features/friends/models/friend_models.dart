class FriendModel {
  final String friendshipId;
  final String accountId;
  final String userName;
  final String displayName;
  final String avatarUrl;
  final String status;

  const FriendModel({
    required this.friendshipId,
    required this.accountId,
    required this.userName,
    required this.displayName,
    required this.avatarUrl,
    required this.status,
  });

  factory FriendModel.fromJson(Map<String, dynamic> j) => FriendModel(
    friendshipId: j['friendshipId'] ?? '',
    accountId:    j['accountId']    ?? '',
    userName:     j['userName']     ?? '',
    displayName:  j['displayName']  ?? '',
    avatarUrl:    j['avatarUrl']    ?? '',
    status:       j['status']       ?? '',
  );

  String get initials {
    final parts = displayName.trim().split(' ');
    if (parts.length >= 2) return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    return displayName.isNotEmpty ? displayName[0].toUpperCase() : '?';
  }
}
