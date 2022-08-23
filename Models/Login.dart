import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome(
      {required this.email, required this.password, required this.isChecked});

  String email;
  String password;
  bool isChecked;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        email: json["email"],
        password: json["password"],
        isChecked: json["isCjecked"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
