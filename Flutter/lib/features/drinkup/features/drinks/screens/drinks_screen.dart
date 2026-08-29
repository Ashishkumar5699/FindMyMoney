import 'package:flutter/material.dart';
import '../../../core/api/api_client.dart';
import '../../../core/api/api_endpoints.dart';
import '../data/drink_data.dart';
import '../models/drink_models.dart';
import '../../../shared/theme/app_theme.dart';
import 'drink_detail_screen.dart';

class DrinksScreen extends StatefulWidget {
  const DrinksScreen({super.key});

  @override
  State<DrinksScreen> createState() => _DrinksScreenState();
}

class _DrinksScreenState extends State<DrinksScreen> {
  DrinkCategory? _selected;
  String _query = '';
  bool _aiExpanded = false;

  List<DrinkRecipe> get _filtered => allDrinks.where((d) {
    final matchCat   = _selected == null || d.category == _selected;
    final matchQuery = _query.isEmpty ||
        d.name.toLowerCase().contains(_query.toLowerCase()) ||
        d.tags.any((t) => t.contains(_query.toLowerCase()));
    return matchCat && matchQuery;
  }).toList();

  DrinkRecipe get _todaysDrink {
    final index = DateTime.now().day % allDrinks.length;
    return allDrinks[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        backgroundColor: AppTheme.background,
        title: const Text('Drinks', style: TextStyle(color: AppTheme.textPrimary)),
      ),
      body: Column(children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search drinks or tags...',
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

        // Category filter
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _CategoryChip(label: 'All', selected: _selected == null,
                  onTap: () => setState(() => _selected = null)),
              ...DrinkCategory.values.map((c) => _CategoryChip(
                label: _catLabel(c),
                selected: _selected == c,
                onTap: () => setState(() => _selected = _selected == c ? null : c),
              )),
            ],
          ),
        ),

        const SizedBox(height: 8),

        // Ask AI banner
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: GestureDetector(
            onTap: () => setState(() => _aiExpanded = !_aiExpanded),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: AppTheme.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppTheme.primary.withValues(alpha: 0.35)),
              ),
              child: Row(children: [
                const Icon(Icons.auto_awesome, color: AppTheme.primary, size: 18),
                const SizedBox(width: 8),
                const Expanded(child: Text('Ask AI for a drink suggestion', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.w600))),
                Icon(_aiExpanded ? Icons.expand_less : Icons.expand_more, color: AppTheme.primary, size: 20),
              ]),
            ),
          ),
        ),
        if (_aiExpanded)
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: AiSuggestPanel(),
          ),

        Expanded(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            children: [
              // Today's pick (only show when no filter)
              if (_selected == null && _query.isEmpty) ...[
                _TodayCard(drink: _todaysDrink),
                const SizedBox(height: 20),
                const Text('ALL DRINKS',
                    style: TextStyle(
                        color: AppTheme.primary, fontSize: 11,
                        fontWeight: FontWeight.w700, letterSpacing: 1.2)),
                const SizedBox(height: 10),
              ],

              ..._filtered.map((d) => _DrinkTile(drink: d)),
            ],
          ),
        ),
      ]),
    );
  }

  String _catLabel(DrinkCategory c) => switch (c) {
    DrinkCategory.beer         => '🍺 Beer',
    DrinkCategory.whisky       => '🥃 Whisky',
    DrinkCategory.gin          => '🍸 Gin',
    DrinkCategory.vodka        => '🍹 Vodka',
    DrinkCategory.rum          => '🌿 Rum',
    DrinkCategory.wine         => '🍷 Wine',
    DrinkCategory.cocktail     => '🧉 Cocktail',
    DrinkCategory.nonAlcoholic => '🥤 Mocktail',
  };
}

// ── Today's pick card ────────────────────────────────────────────────────────

class _TodayCard extends StatelessWidget {
  final DrinkRecipe drink;
  const _TodayCard({required this.drink});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (_) => DrinkDetailScreen(drink: drink))),
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppTheme.primary.withValues(alpha: 0.25), AppTheme.surfaceCard],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.primary.withValues(alpha: 0.5)),
      ),
      child: Row(children: [
        Text(drink.emoji, style: const TextStyle(fontSize: 52)),
        const SizedBox(width: 16),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("TODAY'S PICK",
                style: TextStyle(
                    color: AppTheme.primary, fontSize: 10,
                    fontWeight: FontWeight.w700, letterSpacing: 1.2)),
            const SizedBox(height: 4),
            Text(drink.name,
                style: const TextStyle(
                    color: AppTheme.textPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(drink.tagline,
                style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12),
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
            const SizedBox(height: 8),
            Row(children: [
              _MiniChip(drink.occasion),
              const SizedBox(width: 6),
              _MiniChip(drink.difficulty),
            ]),
          ]),
        ),
        const Icon(Icons.arrow_forward_ios, color: AppTheme.primary, size: 16),
      ]),
    ),
  );
}

class _MiniChip extends StatelessWidget {
  final String label;
  const _MiniChip(this.label);

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
    decoration: BoxDecoration(
      color: AppTheme.primary.withValues(alpha: 0.15),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(label, style: const TextStyle(color: AppTheme.primary, fontSize: 10, fontWeight: FontWeight.w600)),
  );
}

// ── Drink list tile ──────────────────────────────────────────────────────────

class _DrinkTile extends StatelessWidget {
  final DrinkRecipe drink;
  const _DrinkTile({required this.drink});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => Navigator.push(context,
        MaterialPageRoute(builder: (_) => DrinkDetailScreen(drink: drink))),
    child: Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppTheme.surfaceCard,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(children: [
        Text(drink.emoji, style: const TextStyle(fontSize: 32)),
        const SizedBox(width: 14),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(drink.name,
                style: const TextStyle(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 15)),
            const SizedBox(height: 3),
            Text(drink.tagline,
                style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ]),
        ),
        const SizedBox(width: 8),
        Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(drink.categoryLabel,
              style: const TextStyle(color: AppTheme.primary, fontSize: 11)),
          Text('${drink.prepMinutes} min',
              style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11)),
        ]),
        const SizedBox(width: 6),
        const Icon(Icons.chevron_right, color: AppTheme.textSecondary, size: 18),
      ]),
    ),
  );
}

// ── AI Suggest Panel ─────────────────────────────────────────────────────────

class AiSuggestPanel extends StatefulWidget {
  const AiSuggestPanel({super.key});

  @override
  State<AiSuggestPanel> createState() => _AiSuggestPanelState();
}

class _AiSuggestPanelState extends State<AiSuggestPanel> {
  final _ctrl    = TextEditingController();
  final _api     = ApiClient();
  bool    _loading = false;
  String? _response;
  String? _error;

  Future<void> _ask() async {
    final prompt = _ctrl.text.trim();
    if (prompt.isEmpty) return;
    setState(() { _loading = true; _error = null; _response = null; });
    try {
      final data = await _api.post(ApiEndpoints.aiSuggest, {'prompt': prompt});
      setState(() => _response = data['text']?.toString() ?? 'No response');
    } catch (e) {
      setState(() => _error = e.toString().replaceAll('Exception: ', ''));
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void dispose() { _ctrl.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.primary.withValues(alpha: 0.3)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(
            child: TextField(
              controller: _ctrl,
              style: const TextStyle(color: AppTheme.textPrimary, fontSize: 14),
              decoration: InputDecoration(
                hintText: "e.g. Something refreshing for a hot day...",
                hintStyle: const TextStyle(color: AppTheme.textSecondary, fontSize: 13),
                filled: true,
                fillColor: AppTheme.background,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: (_) => _ask(),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: _loading ? null : _ask,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: _loading
                  ? const SizedBox(width: 18, height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black))
                  : const Icon(Icons.send, color: Colors.black, size: 18),
            ),
          ),
        ]),
        if (_response != null) ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppTheme.background,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(_response!,
                style: const TextStyle(color: AppTheme.textPrimary, height: 1.5, fontSize: 13)),
          ),
        ],
        if (_error != null) ...[
          const SizedBox(height: 8),
          Text(_error!, style: const TextStyle(color: AppTheme.error, fontSize: 12)),
        ],
      ]),
    );
  }
}

// ── Category filter chip ─────────────────────────────────────────────────────

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;
  const _CategoryChip({required this.label, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? AppTheme.primary : AppTheme.surfaceCard,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: selected ? AppTheme.primary : Colors.transparent,
        ),
      ),
      child: Text(label,
          style: TextStyle(
              color: selected ? Colors.black : AppTheme.textPrimary,
              fontWeight: selected ? FontWeight.w700 : FontWeight.normal,
              fontSize: 13)),
    ),
  );
}
