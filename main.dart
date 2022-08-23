import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/zoom_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: email != null ? CustomZoomDrawer() : Login(),
  ));
}
