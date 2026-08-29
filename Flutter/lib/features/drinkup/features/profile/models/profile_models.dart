class DrinkProfileModel {
  final String accountId;
  final String userName;
  final String displayName;
  final String phone;
  final String favoriteDrinks;
  final String drinkingLevel;
  final String frequency;
  final String preferredVibe;
  final String bio;
  final String avatarUrl;

  const DrinkProfileModel({
    required this.accountId,
    required this.userName,
    required this.displayName,
    required this.phone,
    required this.favoriteDrinks,
    required this.drinkingLevel,
    required this.frequency,
    required this.preferredVibe,
    required this.bio,
    required this.avatarUrl,
  });

  factory DrinkProfileModel.fromJson(Map<String, dynamic> j) => DrinkProfileModel(
    accountId:      j['accountId']      ?? '',
    userName:       j['userName']       ?? '',
    displayName:    j['displayName']    ?? '',
    phone:          j['phone']          ?? '',
    favoriteDrinks: j['favoriteDrinks'] ?? '',
    drinkingLevel:  j['drinkingLevel']  ?? '',
    frequency:      j['frequency']      ?? '',
    preferredVibe:  j['preferredVibe']  ?? '',
    bio:            j['bio']            ?? '',
    avatarUrl:      j['avatarUrl']      ?? '',
  );

  List<String> get drinksList =>
      favoriteDrinks.isEmpty ? [] : favoriteDrinks.split(',').map((e) => e.trim()).toList();
}
