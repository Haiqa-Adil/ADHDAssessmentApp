import 'package:flutter/material.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({Key? key, required this.name, required this.wrapText}) : super(key: key);
  final String name;
  final List<String> wrapText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
              'Experties'
          ),
          Wrap(
          //  children: ,
          )
        ],
      ),
    );
  }

  Card customTextStyle() => Card(

  );
}
