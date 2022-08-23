import 'dart:convert';

List<Symptom> symptomFromJson(String str) =>
    List<Symptom>.from(json.decode(str).map((x) => Symptom.fromJson(x)));

String symptomToJson(List<Symptom> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Symptom {
  Symptom({
    required this.id,
    required this.name,
    required this.disorderId,
  });

  int id;
  String name;
  int disorderId;

  factory Symptom.fromJson(Map<String, dynamic> json) => Symptom(
        id: json["id"],
        name: json["name"],
        disorderId: json["disorderId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "disorderId": disorderId,
      };
}
