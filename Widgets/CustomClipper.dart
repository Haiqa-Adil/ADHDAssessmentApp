import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiagonalLine extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    path.moveTo(0, height/12);

    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width, 0);

    path.lineTo(width, 30*1.5+40);
    path.quadraticBezierTo(width-18,30*1.5, width-60, 30*1.5+15);


    path.lineTo(30, height*0.28 + 10);
    path.quadraticBezierTo(0, height*0.28+30, 0, height*0.28 + 60);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
