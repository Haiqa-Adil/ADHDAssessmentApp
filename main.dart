
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Screens/Consultants/ConsultantDetails.dart';
import 'package:login/Screens/ExercisesScreen/VideoPlayer.dart';
import 'package:login/Widgets/navigation_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/Login.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');

  runApp(
      MaterialApp(
        home: ConsultantsDetails(),
      )

  );
}
