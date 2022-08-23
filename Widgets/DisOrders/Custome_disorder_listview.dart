import 'dart:math';

import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Screens/assessment.dart';
import 'package:adhdassessmentapp/Screens/symptoms.dart';

import '../../Models/global_values.dart';

class CustomListViewContainer extends StatelessWidget {
  const CustomListViewContainer(
      {Key? key,
      required this.size,
      required this.name,
      required this.img,
      required this.index,
      this.isDisorder = false,
      this.isSymptom = false})
      : super(key: key);
  final Size size;
  final String name;
  final String img;
  final int index;
  final bool isDisorder;
  final bool isSymptom;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height / 4.5,
          child: InkWell(
            onTap: () {
              if (isDisorder) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Symptoms(
                          id: index,
                        )));
              } else if (isSymptom) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Assessment(sympId: index)));
              }
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: img != ""
                          ? DecorationImage(
                              image: AssetImage(img), fit: BoxFit.fill)
                          : null),
                  child: Opacity(
                    opacity: 0.4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorCodes[index],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                      child: FittedBox(
                          child: Text(
                    name,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: isSymptom
                            ? size.height * 0.04
                            : size.height * 0.05),
                  ))),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
