import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Models/global_values.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({Key? key, required this.name, required this.wrapText}) : super(key: key);
  final String name;
  final List<String> wrapText;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.02,
        horizontal: size.width * 0.1
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
                name,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: size.height * 0.028,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Wrap(
            children: [...wrapText.map((e) => customTextStyle(e , size.height * 0.02))],
          )
        ],
      ),
    );
  }

  Card customTextStyle(String text , double height) => Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        width: 1.5,
        color: colorCodes[13]
      )
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
        style: TextStyle(
            color: Colors.grey[800],
            fontSize: height,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500
        ),
      ),
    ),

  );
}
