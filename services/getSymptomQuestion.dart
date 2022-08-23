import 'dart:developer';
import 'package:http/http.dart' as http;
import '../Models/BaseUrl.dart';
import '../Models/disorder/SymptomQuestion.dart';

Future<List<SymptomQuestion>?> getSymptomQuestion(int symptomId) async {
  var url = Uri.parse("$baseUrl/Disorder/symptom/question/?$symptomId");
  var response = await http.get(url, headers: {
    "Accept": "application/json",
    "Access-Control-Allow-Origin": "*"
  });
  if (response.statusCode == 200) {
    return symptomQuestionFromJson(response.body);
  }
  return null;
}
