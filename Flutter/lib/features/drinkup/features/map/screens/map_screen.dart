import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/location_models.dart';
import '../providers/location_provider.dart';
import '../../../shared/theme/app_theme.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final _mapController = MapController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = context.read<LocationProvider>();
      await provider.init();
      _flyToFocus(provider);
    });
  }

  void _flyToFocus(LocationProvider provider) {
    final id = provider.focusAccountId;
    if (id == null) return;
    provider.setFocus(null); // clear after use
    final friend = provider.friendLocations
        .where((f) => f.accountId == id)
        .firstOrNull;
    if (friend != null) {
      _mapController.move(LatLng(friend.latitude, friend.longitude), 16);
    }
  }

  void _flyTo(LatLng point) {
    _mapController.move(point, 15);
    Navigator.pop(context); // close bottom sheet if open
  }

  void _goToMyLocation() {
    final pos = context.read<LocationProvider>().myPosition;
    if (pos != null) {
      _mapController.move(LatLng(pos.latitude, pos.longitude), 15);
    }
  }

  void _callFriend(String phone) async {
    if (phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No phone number available')),
      );
      return;
    }
    final uri = Uri(scheme: 'tel', path: phone);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  void _showFriendsList() {
    final friends = context.read<LocationProvider>().friendLocations;
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.surfaceCard,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => _FriendsListSheet(
        friends: friends,
        onTap: (f) => _flyTo(LatLng(f.latitude, f.longitude)),
        onCall: (f) => _callFriend(f.phone),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<LocationProvider>();
    final sharing  = provider.myStatus?.shareLocation ?? false;
    final myPos    = provider.myPosition;

    final center = myPos != null
        ? LatLng(myPos.latitude, myPos.longitude)
        : const LatLng(28.6139, 77.2090);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.background,
        title: const Text('Map', style: TextStyle(color: AppTheme.textPrimary)),
        actions: [
          if (provider.friendLocations.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.people, color: AppTheme.primary),
              tooltip: 'Friends list',
              onPressed: _showFriendsList,
            ),
          IconButton(
            icon: const Icon(Icons.refresh, color: AppTheme.textSecondary),
            onPressed: () {
              provider.loadFriendLocations();
              if (sharing) provider.fetchAndUploadMyLocation();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: center,
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.banebane.drinkup',
              ),
              MarkerLayer(
                markers: [
                  if (myPos != null)
                    Marker(
                      point: LatLng(myPos.latitude, myPos.longitude),
                      width: 48,
                      height: 48,
                      child: _MyMarker(),
                    ),
                  ...provider.friendLocations.map((f) => Marker(
                    point: LatLng(f.latitude, f.longitude),
                    width: 56,
                    height: 72,
                    child: GestureDetector(
                      onTap: () => _showFriendDetail(f),
                      child: _FriendMarker(friend: f),
                    ),
                  )),
                ],
              ),
            ],
          ),

          // My location FAB
          Positioned(
            right: 16,
            bottom: 140,
            child: FloatingActionButton.small(
              heroTag: 'my_location',
              backgroundColor: AppTheme.surfaceCard,
              onPressed: _goToMyLocation,
              child: const Icon(Icons.my_location, color: AppTheme.primary),
            ),
          ),

          // Friends list FAB (only if friends exist)
          if (provider.friendLocations.isNotEmpty)
            Positioned(
              right: 16,
              bottom: 196,
              child: FloatingActionButton.small(
                heroTag: 'friends_list',
                backgroundColor: AppTheme.surfaceCard,
                onPressed: _showFriendsList,
                child: const Icon(Icons.people, color: AppTheme.primary),
              ),
            ),

          // Sharing toggle card
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: _SharingCard(sharing: sharing, provider: provider),
          ),

          if (provider.isLoading)
            const Positioned(
              top: 16,
              right: 16,
              child: CircularProgressIndicator(color: AppTheme.primary),
            ),
        ],
      ),
    );
  }

  void _showFriendDetail(FriendLocation f) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppTheme.surfaceCard,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _AvatarCircle(name: f.displayName, size: 56),
            const SizedBox(height: 12),
            Text(f.displayName,
                style: const TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            Text('@${f.userName}',
                style: const TextStyle(color: AppTheme.textSecondary)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ActionButton(
                  icon: Icons.navigation,
                  label: 'Go there',
                  color: AppTheme.primary,
                  onTap: () => _flyTo(LatLng(f.latitude, f.longitude)),
                ),
                _ActionButton(
                  icon: Icons.call,
                  label: 'Call',
                  color: Colors.green,
                  onTap: () {
                    Navigator.pop(context);
                    _callFriend(f.phone);
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _MyMarker extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: AppTheme.primary,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white, width: 3),
      boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 6)],
    ),
    child: const Icon(Icons.person, color: Colors.black, size: 24),
  );
}

class _FriendMarker extends StatelessWidget {
  final FriendLocation friend;
  const _FriendMarker({required this.friend});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      _AvatarCircle(name: friend.displayName, size: 40),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          friend.displayName,
          style: const TextStyle(color: Colors.white, fontSize: 10),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}

class _AvatarCircle extends StatelessWidget {
  final String name;
  final double size;
  const _AvatarCircle({required this.name, required this.size});

  @override
  Widget build(BuildContext context) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: AppTheme.surfaceCard,
      shape: BoxShape.circle,
      border: Border.all(color: AppTheme.primary, width: 2),
      boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 6)],
    ),
    child: Center(
      child: Text(
        name.isNotEmpty ? name[0].toUpperCase() : '?',
        style: TextStyle(
          color: AppTheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: size * 0.4,
        ),
      ),
    ),
  );
}

class _FriendsListSheet extends StatelessWidget {
  final List<FriendLocation> friends;
  final void Function(FriendLocation) onTap;
  final void Function(FriendLocation) onCall;
  const _FriendsListSheet({
    required this.friends,
    required this.onTap,
    required this.onCall,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(height: 12),
      Container(
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: AppTheme.textSecondary,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      const SizedBox(height: 12),
      const Text('Friends nearby',
          style: TextStyle(
              color: AppTheme.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      ...friends.map((f) => ListTile(
        leading: _AvatarCircle(name: f.displayName, size: 40),
        title: Text(f.displayName,
            style: const TextStyle(color: AppTheme.textPrimary)),
        subtitle: Text('@${f.userName}',
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.call, color: Colors.green),
              onPressed: () => onCall(f),
            ),
            IconButton(
              icon: const Icon(Icons.navigation, color: AppTheme.primary),
              onPressed: () => onTap(f),
            ),
          ],
        ),
        onTap: () => onTap(f),
      )),
      const SizedBox(height: 16),
    ],
  );
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.15),
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 1.5),
          ),
          child: Icon(icon, color: color, size: 26),
        ),
        const SizedBox(height: 6),
        Text(label, style: TextStyle(color: color, fontSize: 12)),
      ],
    ),
  );
}

class _SharingCard extends StatelessWidget {
  final bool sharing;
  final LocationProvider provider;
  const _SharingCard({required this.sharing, required this.provider});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    decoration: BoxDecoration(
      color: AppTheme.surfaceCard,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 12)],
    ),
    child: Row(
      children: [
        Icon(
          sharing ? Icons.location_on : Icons.location_off,
          color: sharing ? AppTheme.primary : AppTheme.textSecondary,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                sharing ? 'Sharing your location' : 'Location sharing off',
                style: const TextStyle(
                    color: AppTheme.textPrimary, fontWeight: FontWeight.w600),
              ),
              Text(
                sharing
                    ? 'Friends can see where you are'
                    : 'Only you can see friend locations',
                style:
                    const TextStyle(color: AppTheme.textSecondary, fontSize: 12),
              ),
            ],
          ),
        ),
        Switch(
          value: sharing,
          activeThumbColor: AppTheme.primary,
          onChanged: (v) => provider.toggleSharing(v),
        ),
      ],
    ),
  );
}
