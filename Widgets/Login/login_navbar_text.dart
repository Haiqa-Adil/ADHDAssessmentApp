import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Screens/SignUp.dart';

class NavText extends StatelessWidget {
  const NavText({Key? key, required this.text, required this.childText}) : super(key: key);
  final String text;
  final String childText;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 35.0,
          left: 22,
          right: 22
      ),
      child: FittedBox(
        child: RichText(
          text:TextSpan(text: text,
              style: TextStyle(
                  fontSize: size.height/40,
                  fontFamily: 'PoiretOne',
                  fontWeight: FontWeight.w900,
                  color: Color(0xaaffffff)
              ),
              children: [
                TextSpan(
                    text: childText,
                    style: TextStyle(
                        fontSize: size.height/35,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontStyle: FontStyle.italic
                    ),
                    recognizer: TapGestureRecognizer()..onTap = (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => SignUp()));
                    }
                )
              ]
          ),
        ),
      ),
    );
  }
}
