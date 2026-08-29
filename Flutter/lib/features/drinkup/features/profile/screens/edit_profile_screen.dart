import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../../../shared/widgets/bb_button.dart';
import '../../../shared/widgets/bb_text_field.dart';
import '../models/profile_models.dart';
import '../providers/profile_provider.dart';

class EditProfileScreen extends StatefulWidget {
  final DrinkProfileModel profile;
  const EditProfileScreen({super.key, required this.profile});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final TextEditingController _phone          = TextEditingController(text: widget.profile.phone);
  late final TextEditingController _bio            = TextEditingController(text: widget.profile.bio);
  late final TextEditingController _favoriteDrinks = TextEditingController(text: widget.profile.favoriteDrinks);
  late final TextEditingController _preferredVibe  = TextEditingController(text: widget.profile.preferredVibe);

  String _drinkingLevel = '';
  String _frequency     = '';

  static const _levels      = ['Light', 'Moderate', 'Heavy'];
  static const _frequencies = ['Occasionally', 'Weekends', 'Daily'];

  @override
  void initState() {
    super.initState();
    _drinkingLevel = widget.profile.drinkingLevel;
    _frequency     = widget.profile.frequency;
  }

  @override
  void dispose() {
    _phone.dispose();
    _bio.dispose();
    _favoriteDrinks.dispose();
    _preferredVibe.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final provider = context.read<ProfileProvider>();
    final ok = await provider.update(
      phone:          _phone.text.trim(),
      favoriteDrinks: _favoriteDrinks.text.trim(),
      drinkingLevel:  _drinkingLevel,
      frequency:      _frequency,
      preferredVibe:  _preferredVibe.text.trim(),
      bio:            _bio.text.trim(),
    );
    if (!mounted) return;
    if (ok) {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(provider.error ?? 'Update failed'), backgroundColor: AppTheme.error),
      );
      provider.clearError();
    }
  }

  @override
  Widget build(BuildContext context) {
    final loading = context.watch<ProfileProvider>().loading;
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BbTextField(
            controller: _phone,
            label: 'Phone number',
            keyboardType: TextInputType.phone,
            validator: (v) {
              if (v == null || v.trim().isEmpty) return 'Phone number is required';
              if (v.trim().length < 10) return 'Enter a valid phone number';
              return null;
            },
          ),
          const SizedBox(height: 16),
          BbTextField(controller: _bio,            label: 'Bio',             maxLines: 3),
          const SizedBox(height: 16),
          BbTextField(controller: _favoriteDrinks, label: 'Favorite drinks', hint: 'e.g. Beer, Whisky, Wine'),
          const SizedBox(height: 16),
          BbTextField(controller: _preferredVibe,  label: 'Preferred vibe',  hint: 'e.g. Rooftop, Pub, House party'),
          const SizedBox(height: 24),
          _Label('Drinking level'),
          const SizedBox(height: 8),
          _ChipGroup(options: _levels, selected: _drinkingLevel, onSelect: (v) => setState(() => _drinkingLevel = v)),
          const SizedBox(height: 24),
          _Label('How often'),
          const SizedBox(height: 8),
          _ChipGroup(options: _frequencies, selected: _frequency, onSelect: (v) => setState(() => _frequency = v)),
          const SizedBox(height: 40),
          BbButton(label: 'Save', onTap: _save, loading: loading),
        ]),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  final String text;
  const _Label(this.text);
  @override
  Widget build(BuildContext context) =>
      Text(text, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13));
}

class _ChipGroup extends StatelessWidget {
  final List<String> options;
  final String selected;
  final ValueChanged<String> onSelect;
  const _ChipGroup({required this.options, required this.selected, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 10, children: options.map((o) {
      final isSelected = o == selected;
      return ChoiceChip(
        label: Text(o),
        selected: isSelected,
        onSelected: (_) => onSelect(o),
        selectedColor: AppTheme.primary,
        backgroundColor: AppTheme.surfaceCard,
        labelStyle: TextStyle(color: isSelected ? Colors.black : AppTheme.textPrimary, fontWeight: FontWeight.w600),
        side: BorderSide(color: isSelected ? AppTheme.primary : Colors.transparent),
      );
    }).toList());
  }
}
