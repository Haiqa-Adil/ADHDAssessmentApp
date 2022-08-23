import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Widgets/Graphs/custom_tabbar.dart';

class Graphs extends StatelessWidget {
  const Graphs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Graphs'),
        backgroundColor: Color(0xff28203e),
      ),
      body: Column(
        children: [

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: size.width * 0.05),
              child: CustomTabBar(),
            ),
          ),
        ],
      ),
    );
  }
}