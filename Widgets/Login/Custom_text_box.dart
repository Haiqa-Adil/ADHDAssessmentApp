import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../navigation_bar.dart';

class CustomTextBox extends StatefulWidget {
  const CustomTextBox({Key? key, required this.text, required this.form}) : super(key: key);
  final String text;
  final GlobalKey<FormState> form;

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return     TextButton(
        onPressed: () async{
      if (!widget.form.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Enter credentials') ,duration: Duration(seconds: 2),),
        );
      }
      else{
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool? isChecked = prefs.getBool('rememberMe');
        if(isChecked!){
          prefs.setString('email', 'haiqaadil@gmail.com');
        }
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext ctx) => Navigation_Bar()
            )
        );

      }
      },
        style: TextButton.styleFrom(
          backgroundColor: Color(0x88fcbacb),
          shadowColor: Colors.white,

        ),
        child: Padding(
          padding: const EdgeInsets.only(left:8.0 , right: 8),
          child: Text(
            widget.text,
            style: TextStyle(

                fontFamily: 'Ubuntu',
                fontSize: size.height/40,
                color: Colors.white
            ),

          ),
        )
    );
  }
}
