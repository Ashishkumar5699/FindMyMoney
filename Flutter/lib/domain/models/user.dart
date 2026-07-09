class AppUser {
  final String id;
  final String username;
  final String email;
  final String token;
  final DateTime expiresAt;

  const AppUser({
    required this.id,
    required this.username,
    required this.email,
    required this.token,
    required this.expiresAt,
  });

  bool get isExpired => DateTime.now().isAfter(expiresAt);

  factory AppUser.fromJson(Map<String, dynamic> json) => AppUser(
        id: json['id'] as String? ?? '',
        username: json['username'] as String? ?? '',
        email: json['email'] as String? ?? '',
        token: json['token'] as String? ?? '',
        expiresAt: json['expiresAt'] != null
            ? DateTime.parse(json['expiresAt'] as String)
            : DateTime.now().add(const Duration(days: 1)),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'token': token,
        'expiresAt': expiresAt.toIso8601String(),
      };
}
