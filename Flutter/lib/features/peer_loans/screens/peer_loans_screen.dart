import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/auth_provider.dart';
import '../models/peer_loan.dart';
import '../providers/peer_loan_provider.dart';

class PeerLoansScreen extends ConsumerStatefulWidget {
  const PeerLoansScreen({super.key});

  @override
  ConsumerState<PeerLoansScreen> createState() => _PeerLoansScreenState();
}

class _PeerLoansScreenState extends ConsumerState<PeerLoansScreen> {
  final _fmt = NumberFormat('#,##0.00', 'en_IN');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final userId = ref.read(authProvider).user?.id;
    if (userId != null) ref.read(peerLoanProvider.notifier).load(userId);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(peerLoanProvider);
    final active = state.loans.where((l) => !l.isSettled).toList();
    final settled = state.loans.where((l) => l.isSettled).toList();

    final totalGave = active
        .where((l) => l.isGave && l.isVerified)
        .fold(0.0, (s, l) => s + l.balance);
    final totalReceived = active
        .where((l) => !l.isGave && l.isVerified)
        .fold(0.0, (s, l) => s + l.balance);

    return Scaffold(
      backgroundColor: AppTheme.surface,
      appBar: AppBar(
        title: const Text('Peer Loans'),
        backgroundColor: AppTheme.surface,
        foregroundColor: AppTheme.textPrimary,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.push('/peer-loans/create'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/peer-loans/verify'),
        backgroundColor: AppTheme.primary,
        icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
        label: const Text('Scan to Verify',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: _Summary(
                      gave: totalGave,
                      received: totalReceived,
                      fmt: _fmt,
                    ),
                  ),
                  if (active.isEmpty && settled.isEmpty)
                    SliverFillRemaining(child: _EmptyState())
                  else ...[
                    if (active.isNotEmpty) ...[
                      _sectionHeader('Active (${active.length})'),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (_, i) => _LoanTile(
                            loan: active[i],
                            fmt: _fmt,
                            onTap: () => context.push(
                              '/peer-loans/${active[i].id}',
                              extra: active[i],
                            ),
                          ),
                          childCount: active.length,
                        ),
                      ),
                    ],
                    if (settled.isNotEmpty) ...[
                      _sectionHeader('Settled (${settled.length})'),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (_, i) => _LoanTile(
                            loan: settled[i],
                            fmt: _fmt,
                            onTap: () => context.push(
                              '/peer-loans/${settled[i].id}',
                              extra: settled[i],
                            ),
                          ),
                          childCount: settled.length,
                        ),
                      ),
                    ],
                  ],
                ],
              ),
            ),
    );
  }
}

class _Summary extends StatelessWidget {
  final double gave;
  final double received;
  final NumberFormat fmt;
  const _Summary({required this.gave, required this.received, required this.fmt});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.surface,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: _SummaryCard(
              label: 'You lent',
              amount: gave,
              color: const Color(0xFF4CAF50),
              fmt: fmt,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _SummaryCard(
              label: 'You owe',
              amount: received,
              color: Colors.redAccent,
              fmt: fmt,
            ),
          ),
        ],
      ),
    );
  }
}

class _SummaryCard extends StatelessWidget {
  final String label;
  final double amount;
  final Color color;
  final NumberFormat fmt;
  const _SummaryCard({required this.label, required this.amount, required this.color, required this.fmt});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 11, color: AppTheme.textSecondary)),
          const SizedBox(height: 4),
          Text('₹${fmt.format(amount)}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color)),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _sectionHeader(String text) => SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
        child: Text(text,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppTheme.textSecondary,
                letterSpacing: 0.5)),
      ),
    );

class _LoanTile extends StatelessWidget {
  final PeerLoan loan;
  final NumberFormat fmt;
  final VoidCallback onTap;
  const _LoanTile({required this.loan, required this.fmt, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final Color statusColor;
    final String statusLabel;
    switch (loan.status) {
      case 'verified':
        statusColor = const Color(0xFF4CAF50);
        statusLabel = 'Verified';
      case 'pending':
        statusColor = Colors.orange;
        statusLabel = 'Pending';
      case 'rejected':
        statusColor = Colors.redAccent;
        statusLabel = 'Rejected';
      default:
        statusColor = AppTheme.textSecondary;
        statusLabel = 'Settled';
    }

    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        backgroundColor: (loan.isGave ? const Color(0xFF4CAF50) : Colors.redAccent)
            .withValues(alpha: 0.15),
        child: Text(
          loan.contactName.isNotEmpty ? loan.contactName[0].toUpperCase() : '?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: loan.isGave ? const Color(0xFF4CAF50) : Colors.redAccent,
          ),
        ),
      ),
      title: Text(loan.contactName,
          style: const TextStyle(
              fontWeight: FontWeight.w600, color: AppTheme.textPrimary)),
      subtitle: Text(
        '${loan.isGave ? 'You gave' : 'You received'} · ${DateFormat('dd MMM yy').format(loan.createdAt)}',
        style: const TextStyle(fontSize: 12, color: AppTheme.textSecondary),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('₹${fmt.format(loan.balance)}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: AppTheme.textPrimary)),
          Container(
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(statusLabel,
                style: TextStyle(fontSize: 10, color: statusColor, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.handshake_outlined, size: 64, color: AppTheme.textSecondary),
          const SizedBox(height: 16),
          const Text('No peer loans yet',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 16)),
          const SizedBox(height: 8),
          const Text('Tap + to record a loan',
              style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
        ],
      ),
    );
  }
}
