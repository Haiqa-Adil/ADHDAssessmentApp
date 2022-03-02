import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/Models/global_values.dart';

class DisOrders extends StatelessWidget {
  DisOrders ({Key? key}) : super(key: key);

  var ran = Random();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('DisOrder'),
        backgroundColor: Color(0xff28293e),
      ),
      body: ListView.separated(itemBuilder:(context,index) => Stack(
        children: [
          SizedBox(
            height: size.height/4.5,
            child: Stack(
              children: [
                Container(
                  decoration: const
                  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'Assets/images/student.png'
                      ),
                      fit: BoxFit.fill
                    )
                  ),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      color: colorCodes[2],

                    ),
                  ),
                ),
                const Center(
                    child: FittedBox(child: Text('Stress',style: TextStyle(color: Colors.white,fontSize: 60),)))
              ],
            ),
          ),
        ],
      ),
          separatorBuilder: (BuildContext context,int index) => SizedBox(height: size.height/30 ,),
          itemCount: 5,
        padding: EdgeInsets.only(top: size.height/40,bottom: size.height/40,left: size.width/30,right: size.width/30),


      ),
    );
  }
}
