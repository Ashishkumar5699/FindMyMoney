import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../shared/theme/app_theme.dart';
import '../models/plan_models.dart';
import '../providers/plan_provider.dart';
import 'create_plan_screen.dart';

class PlansScreen extends StatefulWidget {
  const PlansScreen({super.key});

  @override
  State<PlansScreen> createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PlanProvider>().load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PlanProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Plans')),
      body: provider.loading && provider.plans.isEmpty
          ? const Center(child: CircularProgressIndicator(color: AppTheme.primary))
          : provider.plans.isEmpty
              ? const Center(child: Text('No plans yet — create one!', style: TextStyle(color: AppTheme.textSecondary)))
              : RefreshIndicator(
                  color: AppTheme.primary,
                  onRefresh: provider.load,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: provider.plans.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (_, i) => _PlanCard(plan: provider.plans[i], provider: provider),
                  ),
                ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const CreatePlanScreen()),
        ).then((_) => provider.load()),
        backgroundColor: AppTheme.primary,
        foregroundColor: Colors.black,
        icon: const Icon(Icons.add),
        label: const Text('New Plan', style: TextStyle(fontWeight: FontWeight.w700)),
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  final PlanModel    plan;
  final PlanProvider provider;
  const _PlanCard({required this.plan, required this.provider});

  void _confirmCancel(BuildContext context, PlanModel plan) {
    showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: AppTheme.surfaceCard,
        title: const Text('Cancel plan?', style: TextStyle(color: AppTheme.textPrimary)),
        content: Text('Cancel "${plan.title}"? This cannot be undone.',
            style: const TextStyle(color: AppTheme.textSecondary)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Keep it', style: TextStyle(color: AppTheme.textSecondary)),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              await provider.cancel(plan.planId);
            },
            child: const Text('Cancel plan', style: TextStyle(color: AppTheme.error)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dateStr = DateFormat('EEE, MMM d · h:mm a').format(plan.scheduledAt.toLocal());
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceCard,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: plan.isCancelled ? AppTheme.error.withValues(alpha: 0.3) : Colors.transparent,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(
            child: Text(plan.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
          ),
          _StatusChip(plan.status),
        ]),
        const SizedBox(height: 8),
        Row(children: [
          const Icon(Icons.location_on_outlined, size: 14, color: AppTheme.textSecondary),
          const SizedBox(width: 4),
          Expanded(child: Text(plan.venueName.isEmpty ? plan.address : plan.venueName,
              style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis)),
        ]),
        const SizedBox(height: 4),
        Row(children: [
          const Icon(Icons.schedule, size: 14, color: AppTheme.textSecondary),
          const SizedBox(width: 4),
          Text(dateStr, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
        ]),
        if (plan.inviteCount > 0) ...[
          const SizedBox(height: 4),
          Row(children: [
            const Icon(Icons.people_outline, size: 14, color: AppTheme.textSecondary),
            const SizedBox(width: 4),
            Text('${plan.inviteCount} invited', style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
          ]),
        ],
        if (plan.creatorName.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text('by ${plan.creatorName}', style: const TextStyle(color: AppTheme.primary, fontSize: 12)),
        ],
        if (plan.isCreator && plan.isActive) ...[
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => _confirmCancel(context, plan),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: AppTheme.error.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppTheme.error.withValues(alpha: 0.35)),
                ),
                child: const Text('Cancel plan', style: TextStyle(color: AppTheme.error, fontSize: 12, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
        if (plan.needsRsvp) ...[
          const SizedBox(height: 12),
          const Divider(color: AppTheme.surfaceCard, height: 1),
          const SizedBox(height: 10),
          Row(children: [
            const Text('Are you in?', style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
            const Spacer(),
            _RsvpButton(label: 'Decline', color: AppTheme.error, onTap: () => provider.rsvp(plan.planId, 'Declined')),
            const SizedBox(width: 8),
            _RsvpButton(label: "I'm in!", color: AppTheme.primary, onTap: () => provider.rsvp(plan.planId, 'Accepted')),
          ]),
        ] else if (!plan.isCreator && plan.myRsvp != null) ...[
          const SizedBox(height: 8),
          _RsvpStatusBadge(plan.myRsvp!),
        ],
      ]),
    );
  }
}

class _RsvpButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;
  const _RsvpButton({required this.label, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(20),
            border: Border.all(color: color.withValues(alpha: 0.4))),
        child: Text(label, style: TextStyle(color: color, fontWeight: FontWeight.w700, fontSize: 13)),
      ),
    );
  }
}

class _RsvpStatusBadge extends StatelessWidget {
  final String rsvp;
  const _RsvpStatusBadge(this.rsvp);

  @override
  Widget build(BuildContext context) {
    final color = rsvp == 'Accepted' ? Colors.green : AppTheme.textSecondary;
    final icon  = rsvp == 'Accepted' ? Icons.check_circle_outline : Icons.cancel_outlined;
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(icon, size: 14, color: color),
      const SizedBox(width: 4),
      Text(rsvp == 'Accepted' ? "You're in" : 'Declined', style: TextStyle(color: color, fontSize: 12)),
    ]);
  }
}

class _StatusChip extends StatelessWidget {
  final String status;
  const _StatusChip(this.status);

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      'Active'    => AppTheme.primary,
      'Cancelled' => AppTheme.error,
      _           => AppTheme.textSecondary,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(20)),
      child: Text(status, style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.w600)),
    );
  }
}
