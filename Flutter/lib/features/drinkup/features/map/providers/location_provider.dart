import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../models/location_models.dart';

class LocationProvider extends ChangeNotifier {
  final _api = ApiClient();

  List<FriendLocation> friendLocations = [];
  MyLocationStatus? myStatus;
  Position? myPosition;
  bool isLoading = false;
  String? error;
  String? focusAccountId; // set before navigating to map to fly to a friend

  void setFocus(String? accountId) {
    focusAccountId = accountId;
  }

  Future<void> init() async {
    await Future.wait([loadMyStatus(), loadFriendLocations()]);
    if (myStatus?.shareLocation == true) {
      await fetchAndUploadMyLocation();
    }
  }

  Future<void> loadMyStatus() async {
    try {
      final data = await _api.get(ApiEndpoints.locationStatus);
      myStatus = MyLocationStatus.fromJson(data);
      notifyListeners();
    } catch (e) {
      debugPrint('[Location] loadMyStatus error: $e');
    }
  }

  Future<void> loadFriendLocations() async {
    try {
      isLoading = true;
      notifyListeners();
      final list = await _api.getList(ApiEndpoints.friendLocations);
      friendLocations = list.map(FriendLocation.fromJson).toList();
      error = null;
    } catch (e) {
      error = e.toString();
      debugPrint('[Location] loadFriendLocations error: $e');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> toggleSharing(bool share) async {
    try {
      final data = await _api.patch(
        ApiEndpoints.locationSharing,
        {'shareLocation': share},
      );
      myStatus = MyLocationStatus.fromJson(data);
      if (share) await fetchAndUploadMyLocation();
      notifyListeners();
    } catch (e) {
      debugPrint('[Location] toggleSharing error: $e');
    }
  }

  Future<void> fetchAndUploadMyLocation() async {
    try {
      final permission = await _requestPermission();
      if (!permission) return;

      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
      );
      myPosition = pos;

      final data = await _api.post(ApiEndpoints.location, {
        'latitude': pos.latitude,
        'longitude': pos.longitude,
      });
      myStatus = MyLocationStatus.fromJson(data);
      notifyListeners();
    } catch (e) {
      debugPrint('[Location] fetchAndUploadMyLocation error: $e');
    }
  }

  Future<bool> _requestPermission() async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.whileInUse ||
           permission == LocationPermission.always;
  }
}
