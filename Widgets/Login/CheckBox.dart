import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({Key? key}) : super(key: key);

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left:  size.height * 0.03),
          child: Checkbox(
            value: isChecked,
            onChanged: (val) async{
              setState(()  {
                isChecked = !isChecked;
              });
              SharedPreferences prefs =await SharedPreferences.getInstance();
              prefs.setBool('rememberMe', isChecked);

            },
            activeColor: Colors.white,
            autofocus: true,
            checkColor: Color(0xfffcbacb),
            hoverColor: Colors.white,
            tristate: true,
            fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
          ),
        ),
        Text(
          'Remember me',
          style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: size.height/50,
              color: Colors.white
          ),
        )
      ],
    );
  }
}
