import 'package:flutter/material.dart';

class ConsultantNavigationBar extends StatelessWidget{
  const ConsultantNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Color(0xfff1f1f1),
        boxShadow: const [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0,-5),
              blurRadius: 10,
              spreadRadius: 2
          )
        ],
        borderRadius: BorderRadius.vertical(
            top: Radius.elliptical(
                MediaQuery.of(context).size.width, 75.0)),
      ),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: TextButton(
            onPressed: () {},
            child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.015,
                    horizontal: size.width * 0.05
                ),
                decoration: BoxDecoration(
                    color: Color(0xff28203e),
                    borderRadius: BorderRadius.circular(10)
                ),

                child: Text(
                  'Make an Appointment',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Candal',
                    fontSize: size.height * 0.025,
                  ),

                )
            ),
          )
      ),
    );
  }

}