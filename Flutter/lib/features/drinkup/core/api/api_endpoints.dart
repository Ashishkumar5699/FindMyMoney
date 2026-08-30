class ApiEndpoints {
  static const String _base = 'https://pnjbdetnetdevwin-bwfweggteaefh7au.centralindia-01.azurewebsites.net/api/drinkup';

  // Auth
  static const String register      = '$_base/auth/register';
  static const String login         = '$_base/auth/login';
  static const String mpinStatus    = '$_base/auth/mpin-status';
  static const String setMpin       = '$_base/auth/set-mpin';
  static const String verifyMpin    = '$_base/auth/verify-mpin';
  static const String sendOtp       = '$_base/auth/send-otp';
  static const String verifyOtp     = '$_base/auth/verify-otp';

  // Profile
  static const String myProfile     = '$_base/profile';
  static String profile(String id)  => '$_base/profile/$id';
  static const String profilePhoto  = '$_base/profile/photo';

  // Friends
  static const String friends        = '$_base/friends';
  static const String pendingFriends = '$_base/friends/pending';
  static const String addFriend      = '$_base/friends/add';
  static String acceptFriend(String id) => '$_base/friends/$id/accept';
  static String declineFriend(String id) => '$_base/friends/$id/decline';

  // Plans
  static const String plans          = '$_base/plans';
  static String plan(String id)      => '$_base/plans/$id';
  static String rsvp(String id)      => '$_base/plans/$id/rsvp';

  // Splits
  static const String splits             = '$_base/splits';
  static const String unsettledSplits    = '$_base/splits/unsettled';
  static String splitsForPlan(String id) => '$_base/splits/plan/$id';
  static String settleShare(String id)   => '$_base/splits/$id/settle';

  // Messages
  static const String conversations      = '$_base/messages';
  static String conversation(String id)  => '$_base/messages/$id';
  static String markRead(String id)      => '$_base/messages/$id/read';
  static const String fcmToken           = '$_base/messages/fcm-token';
  static String ping(String friendId)    => '$_base/messages/ping/$friendId';

  // AI
  static const String aiSuggest = '$_base/ai/suggest';

  // Location
  static const String location           = '$_base/location';
  static const String locationSharing    = '$_base/location/sharing';
  static const String locationStatus     = '$_base/location/status';
  static const String friendLocations    = '$_base/location/friends';
}
