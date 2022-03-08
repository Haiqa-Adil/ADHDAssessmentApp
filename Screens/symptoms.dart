import 'package:flutter/material.dart';

import '../Models/disorders.dart';
import '../Widgets/DisOrders/Custome_disorder_listview.dart';

class Symptoms extends StatelessWidget {
  const Symptoms({Key? key, required this.id}) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(disorders[id].disOrder ),
        backgroundColor: Color(0xff28203e),
      ),
      body: ListView.separated(
        itemBuilder: (context, index){
          //  int i = ran.Nex
          String img = 'Assets/images/background/' + ((9-index)%10 + 1 ).toString()+ '.jpg';
          int symptomId = disorders[id].symptoms[index] - 1;

          return CustomListViewContainer(size: size,
            name:symptoms[symptomId].name , img: ""  ,
            index: symptomId,isSymptom: true,);
        },


        separatorBuilder: (BuildContext context,int index) =>
            SizedBox(height: size.height/30 ,),
        itemCount: disorders[id].symptoms.length,
        padding: EdgeInsets.symmetric(vertical: size.height/40,
            horizontal: size.width/30),
      )

    );
  }
}
