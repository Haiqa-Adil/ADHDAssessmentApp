import 'package:flutter/material.dart';

import '../CustomClipper.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: -size.height/20,
            left: size.width/2.35,
            child: SizedBox(
                height: size.height*0.5,
                width : size.width*0.6,
                child: Image.asset(
                  'Assets/images/doctors.png',
                  filterQuality: FilterQuality.high,)
            )
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipPath(
                clipper: DiagonalLine(),
                child: Container(
                  height: size.height*0.8,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff20283e),
                  ),
                )
            ),
          ),
        ),

      ],
    );
  }
}
