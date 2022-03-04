import 'package:flutter/material.dart';

import '../Models/disorders.dart';
import '../Models/global_values.dart';

class CustomListViewContainer extends StatelessWidget {
  CustomListViewContainer({Key? key, required this.size,
    required this.name, required this.img, required this.index})
      : super(key: key);
  final Size size;
  final String name;
  final String img;
  final int index;
  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
          SizedBox(
            height: size.height/4.5,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                              img
                          ),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: colorCodes[index],
                          borderRadius: BorderRadius.circular(20)

                      ),
                    ),
                  ),
                ),
                Center(
                    child: FittedBox(
                        child: Text(name,
                          style:TextStyle(
                            fontFamily: 'Ubuntu',
                              color: Colors.white,
                              fontSize: size.height * 0.05),
                        )
                    )
                )
              ],
            ),
          ),
        ],
      );

  }
}