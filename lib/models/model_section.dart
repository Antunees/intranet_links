class ModelSection {
  String type;
  String name;
  int columns;
  List<Map<String, dynamic>>? children;

  ModelSection({
    required this.type,
    required this.name,
    required this.columns,
    required this.children,
  });
}
