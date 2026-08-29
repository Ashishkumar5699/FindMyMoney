class AuthResult {
  final String token;
  final String userName;
  final String accountId;

  AuthResult({required this.token, required this.userName, required this.accountId});

  factory AuthResult.fromJson(Map<String, dynamic> json) => AuthResult(
    token:     json['token']     ?? '',
    userName:  json['userName']  ?? '',
    accountId: json['accountId'] ?? '',
  );
}

class MpinStatus {
  final bool isMpinSet;
  MpinStatus({required this.isMpinSet});
  factory MpinStatus.fromJson(Map<String, dynamic> json) =>
      MpinStatus(isMpinSet: json['isMpinSet'] ?? false);
}
