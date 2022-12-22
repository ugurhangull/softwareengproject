class ArdunioData {
  final int id;
  final String name;
  final String field1;
  final String field2;

  ArdunioData(
      {required this.id,
      required this.name,
      required this.field1,
      required this.field2});

  factory ArdunioData.fromJson(Map<String, dynamic> json) {
    return ArdunioData(
        id: json["id"],
        name: json["name"],
        field1: json["field1"],
        field2: json["field2"]);
  }
}
