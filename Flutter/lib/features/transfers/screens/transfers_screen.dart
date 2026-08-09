import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/transfer.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/transfer_provider.dart';

class TransfersScreen extends ConsumerStatefulWidget {
  const TransfersScreen({super.key});

  @override
  ConsumerState<TransfersScreen> createState() => _TransfersScreenState();
}

class _TransfersScreenState extends ConsumerState<TransfersScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(transferProvider.notifier).load(user.id);
  }

  Future<void> _delete(Transfer transfer) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Transfer'),
        content: Text(
            'Delete transfer of ₹${NumberFormat("#,##0.00").format(transfer.amount)}?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel')),
          TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Delete',
                  style: TextStyle(color: AppTheme.expense))),
        ],
      ),
    );
    if (confirm != true) return;
    final ok = await ref.read(transferProvider.notifier).delete(transfer.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete transfer')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(transferProvider);
    final fmt = NumberFormat('#,##0.00');

    return Scaffold(
      appBar: AppBar(title: const Text('Transfers')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/transfers/add');
          _load();
        },
        child: const Icon(Icons.add),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: state.transfers.isEmpty
                  ? const Center(
                      child: Text('No transfers recorded yet',
                          style: TextStyle(color: AppTheme.textSecondary)),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                      itemCount: state.transfers.length,
                      itemBuilder: (_, i) {
                        final t = state.transfers[i];
                        return _TransferCard(
                          transfer: t,
                          fmt: fmt,
                          onEdit: () async {
                            await context.push('/transfers/edit/${t.id}');
                            _load();
                          },
                          onDelete: () => _delete(t),
                        );
                      },
                    ),
            ),
    );
  }
}

class _TransferCard extends StatelessWidget {
  final Transfer transfer;
  final NumberFormat fmt;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _TransferCard({
    required this.transfer,
    required this.fmt,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final from = transfer.fromSourceName ?? transfer.fromSourceId;
    final to = transfer.toSourceName ?? transfer.toSourceId ?? '—';

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppTheme.primary.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.swap_horiz,
                  color: AppTheme.primary, size: 22),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                          child: Text(from,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                              overflow: TextOverflow.ellipsis)),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Icon(Icons.arrow_forward,
                            size: 14, color: AppTheme.textSecondary),
                      ),
                      Flexible(
                          child: Text(to,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(DateFormat('dd MMM yyyy').format(transfer.date),
                      style: const TextStyle(
                          color: AppTheme.textSecondary, fontSize: 12)),
                  if (transfer.notes != null)
                    Text(transfer.notes!,
                        style: const TextStyle(
                            color: AppTheme.textSecondary, fontSize: 11),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('₹${fmt.format(transfer.amount)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppTheme.primary)),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert,
                      color: AppTheme.textSecondary, size: 18),
                  onSelected: (v) {
                    if (v == 'edit') onEdit();
                    if (v == 'delete') onDelete();
                  },
                  itemBuilder: (_) => [
                    const PopupMenuItem(value: 'edit', child: Text('Edit')),
                    const PopupMenuItem(
                        value: 'delete',
                        child: Text('Delete',
                            style: TextStyle(color: AppTheme.expense))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
