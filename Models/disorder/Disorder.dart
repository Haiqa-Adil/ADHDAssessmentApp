import 'dart:convert';

List<Disorder> disorderFromJson(String str) =>
    List<Disorder>.from(json.decode(str).map((x) => Disorder.fromJson(x)));

String disorderToJson(List<Disorder> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Disorder {
  Disorder({
    required this.id,
    required this.name,
    this.symptoms,
  });

  int id;
  String name;
  dynamic symptoms;

  factory Disorder.fromJson(Map<String, dynamic> json) => Disorder(
        id: json["id"],
        name: json["name"],
        symptoms: json["symptoms"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "symptoms": symptoms,
      };
}
