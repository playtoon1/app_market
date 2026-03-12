class AppModel {
  final String id;
  final String name;
  final String icon;
  final String description;
  final double size;
  final DateTime date;

  AppModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.size,
    required this.date,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      id: json['id'].toString(),
      name: json['name'] ?? '',
      icon: json['icon'] ?? '',
      description: json['description'] ?? '',
      size: (json['size'] ?? 0).toDouble(),
      date: DateTime.parse(json['date'] ?? DateTime.now().toIso8601String()),
    );
  }
}
