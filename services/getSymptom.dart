import 'dart:developer';
import 'package:http/http.dart' as http;
import '../Models/BaseUrl.dart';
import '../Models/disorder/Symptom.dart';

Future<List<Symptom>?> getSymptom(int id) async {
  var url = Uri.parse(baseUrl + "Disorder" + "symptom" + "?${id}");
  var response = await http.get(url, headers: {
    "Accept": "application/json",
    "Access-Control_Allow_Origin": "*"
  });
  if (response.statusCode == 200) {
    return symptomFromJson(response.body);
  }
  return null;
}
