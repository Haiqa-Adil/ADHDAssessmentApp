import 'package:flutter/material.dart';
import 'package:login/Models/global_values.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('Experience',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: size.height * 0.023,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height:  size.height * 0.005,
              ),
              Text('10 Year+',
                style: TextStyle(
                    color: colorCodes[13],
                    fontSize: size.height * 0.024,
                    fontFamily: 'Candal',
                    fontWeight: FontWeight.w600
                ),)
            ],
          ),

          Column(
            children: [
              Text(
                  'Patient',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: size.height * 0.023,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height:  size.height * 0.005,
              ),
              Text('100+',
                style: TextStyle(
                    color: colorCodes[13],
                    fontSize: size.height * 0.024,
                    fontFamily: 'Candal',
                    fontWeight: FontWeight.w600
                ),)
            ],
          ),

          Column(
            children: [
              Text('Rating',
                style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: size.height * 0.023,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(
                height:  size.height * 0.005,
              ),
              Text('4.0',
                style: TextStyle(
                    color: colorCodes[13],
                    fontSize: size.height * 0.024,
                    fontFamily: 'Candal',
                    fontWeight: FontWeight.w600
                ),)
            ],
          )
        ],
      ),
    );
  }
}
