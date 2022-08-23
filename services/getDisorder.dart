import 'dart:developer';
import 'package:http/http.dart' as http;
import '../Models/BaseUrl.dart';
import '../Models/disorder/Disorder.dart';

Future<List<Disorder>?> getDisorders() async {
  try {
    print("GET DISORDER");
    var url = Uri.parse('https://localhost:7200/api/Disorder/disorder');
    print(url);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return disorderFromJson(response.body);
    }
  } catch (e) {
    print(e);
  }
}
