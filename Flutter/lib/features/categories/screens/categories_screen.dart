import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_theme.dart';
import '../../../domain/models/category.dart';
import '../../auth/providers/auth_provider.dart';
import '../providers/category_provider.dart';

class CategoriesScreen extends ConsumerStatefulWidget {
  const CategoriesScreen({super.key});

  @override
  ConsumerState<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends ConsumerState<CategoriesScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  void _load() {
    final user = ref.read(authProvider).user;
    if (user == null) return;
    ref.read(categoryProvider.notifier).load(user.id);
  }

  Future<void> _delete(Category cat) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete Category'),
        content: Text('Delete "${cat.name}"?'),
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
    final ok = await ref.read(categoryProvider.notifier).delete(cat.id);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete category')));
    }
  }

  void _showAddDialog({String? parentId, String? parentType}) {
    showDialog(
      context: context,
      builder: (_) => _AddCategoryDialog(
        parentId: parentId,
        defaultType: parentType,
        onAdd: ({required String name, required String type, String? pid}) async {
          final ok = await ref.read(categoryProvider.notifier).create(
                name: name,
                type: type,
                parentId: pid,
              );
          if (!ok && mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to add category')));
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(categoryProvider);
    final topLevel = state.categories.where((c) => c.parentId == null).toList();
    final income = topLevel.where((c) => c.type == 'Income').toList();
    final expense = topLevel.where((c) => c.type == 'Expense').toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(),
        child: const Icon(Icons.add),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: () async => _load(),
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                children: [
                  if (income.isNotEmpty) ...[
                    _SectionHeader(
                      label: 'Income',
                      color: AppTheme.income,
                      onAdd: () =>
                          _showAddDialog(parentType: 'Income'),
                    ),
                    const SizedBox(height: 8),
                    ...income.map((c) => _CategoryTile(
                          category: c,
                          onDelete: () => _delete(c),
                          onAddSub: () => _showAddDialog(
                              parentId: c.id, parentType: c.type),
                          onDeleteSub: (sub) => _delete(sub),
                        )),
                    const SizedBox(height: 16),
                  ],
                  if (expense.isNotEmpty) ...[
                    _SectionHeader(
                      label: 'Expense',
                      color: AppTheme.expense,
                      onAdd: () =>
                          _showAddDialog(parentType: 'Expense'),
                    ),
                    const SizedBox(height: 8),
                    ...expense.map((c) => _CategoryTile(
                          category: c,
                          onDelete: () => _delete(c),
                          onAddSub: () => _showAddDialog(
                              parentId: c.id, parentType: c.type),
                          onDeleteSub: (sub) => _delete(sub),
                        )),
                  ],
                  if (topLevel.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text('No categories added yet',
                            style:
                                TextStyle(color: AppTheme.textSecondary)),
                      ),
                    ),
                ],
              ),
            ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onAdd;

  const _SectionHeader(
      {required this.label, required this.color, required this.onAdd});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: color)),
          const Spacer(),
          TextButton.icon(
            onPressed: onAdd,
            icon: const Icon(Icons.add, size: 16),
            label: const Text('Add', style: TextStyle(fontSize: 12)),
            style: TextButton.styleFrom(
              foregroundColor: color,
              padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              minimumSize: Size.zero,
            ),
          ),
        ],
      );
}

class _CategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback onDelete;
  final VoidCallback onAddSub;
  final void Function(Category) onDeleteSub;

  const _CategoryTile({
    required this.category,
    required this.onDelete,
    required this.onAddSub,
    required this.onDeleteSub,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(category.name,
                style: const TextStyle(fontWeight: FontWeight.w600)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle_outline,
                      size: 20, color: AppTheme.primary),
                  onPressed: onAddSub,
                  tooltip: 'Add sub-category',
                ),
                IconButton(
                  icon: const Icon(Icons.delete_outline,
                      size: 20, color: AppTheme.expense),
                  onPressed: onDelete,
                ),
              ],
            ),
          ),
          if (category.subCategories.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: category.subCategories
                    .map((sub) => Chip(
                          label: Text(sub.name,
                              style: const TextStyle(fontSize: 12)),
                          backgroundColor:
                              AppTheme.surface,
                          deleteIconColor: AppTheme.textSecondary,
                          onDeleted: () => onDeleteSub(sub),
                          padding: EdgeInsets.zero,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}

class _AddCategoryDialog extends StatefulWidget {
  final String? parentId;
  final String? defaultType;
  final Future<void> Function(
      {required String name,
      required String type,
      String? pid}) onAdd;

  const _AddCategoryDialog({
    this.parentId,
    this.defaultType,
    required this.onAdd,
  });

  @override
  State<_AddCategoryDialog> createState() => _AddCategoryDialogState();
}

class _AddCategoryDialogState extends State<_AddCategoryDialog> {
  final _nameCtrl = TextEditingController();
  String _type = 'Expense';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    if (widget.defaultType != null) _type = widget.defaultType!;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSubCategory = widget.parentId != null;
    return AlertDialog(
      title:
          Text(isSubCategory ? 'Add Sub-Category' : 'Add Category'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameCtrl,
            decoration: const InputDecoration(labelText: 'Name'),
            autofocus: true,
          ),
          if (!isSubCategory) ...[
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              key: ValueKey(_type),
              initialValue: _type,
              decoration: const InputDecoration(labelText: 'Type'),
              dropdownColor: AppTheme.card,
              items: ['Income', 'Expense']
                  .map((t) =>
                      DropdownMenuItem(value: t, child: Text(t)))
                  .toList(),
              onChanged: (v) => setState(() => _type = v ?? 'Expense'),
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel')),
        ElevatedButton(
          onPressed: _isLoading
              ? null
              : () async {
                  if (_nameCtrl.text.trim().isEmpty) return;
                  setState(() => _isLoading = true);
                  final nav = Navigator.of(context);
                  await widget.onAdd(
                    name: _nameCtrl.text.trim(),
                    type: _type,
                    pid: widget.parentId,
                  );
                  if (mounted) nav.pop();
                },
          child: _isLoading
              ? const SizedBox(
                  height: 16,
                  width: 16,
                  child:
                      CircularProgressIndicator(strokeWidth: 2))
              : const Text('Add'),
        ),
      ],
    );
  }
}
