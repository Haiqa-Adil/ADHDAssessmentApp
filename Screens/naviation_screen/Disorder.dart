import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login/Models/disorders.dart';
import 'package:login/Models/global_values.dart';
import 'package:login/Widgets/Custome_disorder_listview.dart';

class DisOrders extends StatelessWidget {
  DisOrders ({Key? key}) : super(key: key);

  var ran = Random();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('DisOrder'),
          backgroundColor: Color(0xff28203e),
        ),
        body:ListView.separated(
          itemBuilder: (context, index){
          //  int i = ran.Nex
            String img = 'Assets/images/background/' + (index%10 + 1).toString()+ '.jpg';

            return CustomListViewContainer(size: size, name: disorders[index].disOrder, img: img  , index: index);
          },


          separatorBuilder: (BuildContext context,int index) => SizedBox(height: size.height/30 ,),
          itemCount: disorders.length,
          padding: EdgeInsets.only(top: size.height/40,bottom: size.height/40,left: size.width/30,right: size.width/30),

        )
    );
  }
}
