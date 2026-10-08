import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/auth_provider.dart';
import '../models/card_offer.dart';
import '../providers/card_offer_provider.dart';
import 'add_offer_screen.dart';
import 'suggest_card_screen.dart';

class CardOffersScreen extends ConsumerStatefulWidget {
  const CardOffersScreen({super.key});

  @override
  ConsumerState<CardOffersScreen> createState() => _CardOffersScreenState();
}

class _CardOffersScreenState extends ConsumerState<CardOffersScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(cardOfferProvider.notifier).load(user.id);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(cardOfferProvider);

    return Scaffold(
      backgroundColor: AppTheme.card,
      appBar: AppBar(
        backgroundColor: AppTheme.surface,
        title: const Text('Card Offers'),
        actions: [
          IconButton(
            icon: const Icon(Icons.auto_awesome),
            tooltip: 'Best card for a spend',
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SuggestCardScreen())),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (_) => const AddOfferScreen()));
          _load();
        },
        backgroundColor: AppTheme.primary,
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('Add Offer',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : state.offers.isEmpty
              ? _empty()
              : _offerList(state.offers),
    );
  }

  Widget _empty() => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.local_offer_outlined, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 12),
            Text('No active offers',
                style: TextStyle(color: Colors.grey[500], fontSize: 16)),
            const SizedBox(height: 4),
            Text('Add offers from your bank SMS or manually',
                style: TextStyle(color: Colors.grey[400], fontSize: 13)),
          ],
        ),
      );

  Widget _offerList(List<CardOffer> offers) {
    // Group by card name
    final grouped = <String, List<CardOffer>>{};
    for (final o in offers) {
      grouped.putIfAbsent(o.cardName, () => []).add(o);
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: grouped.entries.map((entry) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Text(entry.key,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            ...entry.value.map((o) => _offerCard(o)),
            const SizedBox(height: 8),
          ],
        );
      }).toList(),
    );
  }

  Widget _offerCard(CardOffer offer) {
    final user = ref.read(authProvider).user;
    final daysLeft = offer.validUntil != null
        ? offer.validUntil!.difference(DateTime.now()).inDays
        : null;

    return Card(
      color: AppTheme.surface,
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppTheme.primary.withValues(alpha: 0.12),
          child: Icon(Icons.local_offer, color: AppTheme.primary, size: 20), // ignore: deprecated_member_use
        ),
        title: Text(offer.title,
            style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (offer.discountPercent != null)
              Text('${offer.discountPercent}% off'
                  '${offer.maxDiscount != null ? ' (max ₹${offer.maxDiscount!.toStringAsFixed(0)})' : ''}'),
            if (offer.merchant != null) Text(offer.merchant!),
            if (daysLeft != null)
              Text(
                daysLeft > 0 ? 'Expires in $daysLeft days' : 'Expires today',
                style: TextStyle(
                    color: daysLeft <= 3 ? Colors.orange : Colors.grey[500],
                    fontSize: 12),
              ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, size: 20),
          onPressed: () {
            if (user == null) return;
            ref.read(cardOfferProvider.notifier).deleteOffer(user.id, offer.id);
          },
        ),
      ),
    );
  }
}
