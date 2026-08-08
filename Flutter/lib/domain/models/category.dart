class Category {
  final String id;
  final String userId;
  final String name;
  final String type;
  final String? parentId;
  final List<Category> subCategories;

  const Category({
    required this.id,
    required this.userId,
    required this.name,
    required this.type,
    this.parentId,
    this.subCategories = const [],
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'] as String? ?? '',
        userId: json['userId'] as String? ?? '',
        name: json['name'] as String? ?? '',
        type: json['type'] as String? ?? '',
        parentId: json['parentId'] as String?,
        subCategories: (json['subCategories'] as List<dynamic>?)
                ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'name': name,
        'type': type,
        'parentId': parentId,
        'subCategories': subCategories.map((c) => c.toJson()).toList(),
      };

  Category copyWith({
    String? id,
    String? userId,
    String? name,
    String? type,
    String? parentId,
    List<Category>? subCategories,
  }) =>
      Category(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        name: name ?? this.name,
        type: type ?? this.type,
        parentId: parentId ?? this.parentId,
        subCategories: subCategories ?? this.subCategories,
      );
}
