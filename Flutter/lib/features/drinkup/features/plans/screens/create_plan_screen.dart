import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../features/friends/models/friend_models.dart';
import '../../../features/friends/providers/friend_provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/bb_button.dart';
import '../../../shared/widgets/bb_text_field.dart';
import '../providers/plan_provider.dart';

class CreatePlanScreen extends StatefulWidget {
  const CreatePlanScreen({super.key});

  @override
  State<CreatePlanScreen> createState() => _CreatePlanScreenState();
}

class _CreatePlanScreenState extends State<CreatePlanScreen> {
  final _title     = TextEditingController();
  final _venue     = TextEditingController();
  final _address   = TextEditingController();
  final _notes     = TextEditingController();
  DateTime?         _scheduledAt;
  final Set<String> _invitedIds = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FriendProvider>().load();
    });
  }

  @override
  void dispose() {
    _title.dispose();
    _venue.dispose();
    _address.dispose();
    _notes.dispose();
    super.dispose();
  }

  Future<void> _pickDateTime() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(hours: 2)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(colorScheme: const ColorScheme.dark(primary: AppTheme.primary)),
        child: child!,
      ),
    );
    if (date == null || !mounted) return;
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(colorScheme: const ColorScheme.dark(primary: AppTheme.primary)),
        child: child!,
      ),
    );
    if (time == null) return;
    setState(() => _scheduledAt = DateTime(date.year, date.month, date.day, time.hour, time.minute));
  }

  void _openFriendPicker() {
    final allFriends = context.read<FriendProvider>().friends;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppTheme.background,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => _FriendPickerSheet(
        friends: allFriends,
        selected: Set.from(_invitedIds),
        onDone: (ids) => setState(() {
          _invitedIds.clear();
          _invitedIds.addAll(ids);
        }),
      ),
    );
  }

  Future<void> _create() async {
    if (_title.text.trim().isEmpty)  { _showSnack('Title is required');    return; }
    if (_venue.text.trim().isEmpty)  { _showSnack('Venue is required');    return; }
    if (_scheduledAt == null)         { _showSnack('Pick a date & time');   return; }

    final ok = await context.read<PlanProvider>().create(
      title:            _title.text.trim(),
      venueName:        _venue.text.trim(),
      address:          _address.text.trim(),
      scheduledAt:      _scheduledAt!,
      notes:            _notes.text.trim(),
      inviteAccountIds: _invitedIds.toList(),
    );
    if (!mounted) return;
    if (ok) {
      Navigator.pop(context);
    } else {
      final err = context.read<PlanProvider>().error;
      _showSnack(err ?? 'Failed to create plan', isError: true);
      context.read<PlanProvider>().clearError();
    }
  }

  void _showSnack(String msg, {bool isError = false}) => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg), backgroundColor: isError ? AppTheme.error : AppTheme.primary),
  );

  @override
  Widget build(BuildContext context) {
    final loading   = context.watch<PlanProvider>().loading;
    final friends   = context.watch<FriendProvider>().friends;
    final invited   = friends.where((f) => _invitedIds.contains(f.accountId)).toList();
    final dateStr   = _scheduledAt == null
        ? 'Pick date & time'
        : DateFormat('EEE, MMM d · h:mm a').format(_scheduledAt!);

    return Scaffold(
      appBar: AppBar(title: const Text('New Plan')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BbTextField(controller: _title,   label: 'Plan title', hint: 'e.g. Friday night out'),
          const SizedBox(height: 16),
          BbTextField(controller: _venue,   label: 'Venue',      hint: 'e.g. The Tap Room'),
          const SizedBox(height: 16),
          BbTextField(controller: _address, label: 'Address',    hint: 'Optional'),
          const SizedBox(height: 16),
          BbTextField(controller: _notes,   label: 'Notes',      hint: 'Optional', maxLines: 2),
          const SizedBox(height: 24),

          // Date / time
          GestureDetector(
            onTap: _pickDateTime,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: AppTheme.surfaceCard,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: _scheduledAt == null
                      ? AppTheme.textSecondary.withValues(alpha: 0.3)
                      : AppTheme.primary,
                ),
              ),
              child: Row(children: [
                const Icon(Icons.schedule, color: AppTheme.primary, size: 20),
                const SizedBox(width: 12),
                Text(dateStr, style: TextStyle(
                  color: _scheduledAt == null ? AppTheme.textSecondary : AppTheme.textPrimary,
                )),
              ]),
            ),
          ),

          const SizedBox(height: 24),

          // Invite section
          Row(
            children: [
              const Text('INVITE FRIENDS',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600,
                      color: AppTheme.primary, letterSpacing: 1)),
              const Spacer(),
              if (friends.isNotEmpty)
                TextButton.icon(
                  onPressed: _openFriendPicker,
                  icon: const Icon(Icons.person_add, size: 16, color: AppTheme.primary),
                  label: Text(
                    invited.isEmpty ? 'Select' : 'Edit',
                    style: const TextStyle(color: AppTheme.primary, fontSize: 13),
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                ),
            ],
          ),
          const SizedBox(height: 12),

          if (friends.isEmpty)
            const Text('Add friends first to invite them to plans.',
                style: TextStyle(color: AppTheme.textSecondary, fontSize: 13))
          else if (invited.isEmpty)
            GestureDetector(
              onTap: _openFriendPicker,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: AppTheme.surfaceCard,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppTheme.textSecondary.withValues(alpha: 0.2)),
                ),
                child: const Row(children: [
                  Icon(Icons.group_add, color: AppTheme.textSecondary, size: 20),
                  SizedBox(width: 12),
                  Text('Tap to invite friends', style: TextStyle(color: AppTheme.textSecondary)),
                ]),
              ),
            )
          else
            // Avatar chips for selected friends
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: invited.map((f) => GestureDetector(
                onTap: () => setState(() => _invitedIds.remove(f.accountId)),
                child: Chip(
                  avatar: CircleAvatar(
                    backgroundColor: AppTheme.primary,
                    child: Text(f.initials,
                        style: const TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold)),
                  ),
                  label: Text(f.displayName,
                      style: const TextStyle(color: AppTheme.textPrimary, fontSize: 13)),
                  deleteIcon: const Icon(Icons.close, size: 14, color: AppTheme.textSecondary),
                  onDeleted: () => setState(() => _invitedIds.remove(f.accountId)),
                  backgroundColor: AppTheme.surfaceCard,
                  side: const BorderSide(color: AppTheme.primary, width: 1),
                ),
              )).toList(),
            ),

          const SizedBox(height: 40),
          BbButton(label: 'Create Plan', onTap: _create, loading: loading),
          const SizedBox(height: 24),
        ]),
      ),
    );
  }
}

// ── Bottom sheet friend picker ──────────────────────────────────────────────

class _FriendPickerSheet extends StatefulWidget {
  final List<FriendModel> friends;
  final Set<String> selected;
  final void Function(Set<String>) onDone;

  const _FriendPickerSheet({
    required this.friends,
    required this.selected,
    required this.onDone,
  });

  @override
  State<_FriendPickerSheet> createState() => _FriendPickerSheetState();
}

class _FriendPickerSheetState extends State<_FriendPickerSheet> {
  late final Set<String> _picked = Set.from(widget.selected);
  String _query = '';

  List<FriendModel> get _filtered => widget.friends
      .where((f) =>
          f.displayName.toLowerCase().contains(_query.toLowerCase()) ||
          f.userName.toLowerCase().contains(_query.toLowerCase()))
      .toList();

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: DraggableScrollableSheet(
        initialChildSize: 0.65,
        minChildSize: 0.4,
        maxChildSize: 0.92,
        expand: false,
        builder: (_, scrollCtrl) => Column(children: [
          const SizedBox(height: 12),
          Container(
            width: 40, height: 4,
            decoration: BoxDecoration(
              color: AppTheme.textSecondary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Row(children: [
              const Expanded(
                child: Text('Invite friends',
                    style: TextStyle(color: AppTheme.textPrimary,
                        fontSize: 17, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {
                  widget.onDone(_picked);
                  Navigator.pop(context);
                },
                child: Text(
                  'Done (${_picked.length})',
                  style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.w600),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Search friends...',
                hintStyle: const TextStyle(color: AppTheme.textSecondary),
                prefixIcon: const Icon(Icons.search, color: AppTheme.textSecondary),
                filled: true,
                fillColor: AppTheme.surfaceCard,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: AppTheme.textPrimary),
              onChanged: (v) => setState(() => _query = v),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              controller: scrollCtrl,
              itemCount: _filtered.length,
              itemBuilder: (_, i) {
                final f = _filtered[i];
                final selected = _picked.contains(f.accountId);
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: selected ? AppTheme.primary : AppTheme.surfaceCard,
                    child: Text(f.initials,
                        style: TextStyle(
                          color: selected ? Colors.black : AppTheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                  ),
                  title: Text(f.displayName,
                      style: const TextStyle(color: AppTheme.textPrimary, fontWeight: FontWeight.w500)),
                  subtitle: Text('@${f.userName}',
                      style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                  trailing: selected
                      ? const Icon(Icons.check_circle, color: AppTheme.primary)
                      : const Icon(Icons.circle_outlined, color: AppTheme.textSecondary),
                  onTap: () => setState(() {
                    if (selected) { _picked.remove(f.accountId); }
                    else          { _picked.add(f.accountId); }
                  }),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
