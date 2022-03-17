import 'package:flutter/material.dart';

import '../../Widgets/Pshyciatrist/list_tile.dart';

class Psychiatrist extends StatelessWidget {
  const Psychiatrist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text('Consultants'),
        backgroundColor: Color(0xff28203e),

      ),
      body : Card(
        color: Color(0xfff1f1f1),
        child: Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: ListView.separated(

            itemBuilder: (context,index){
              return ListTileData();
            },
            //separatorBuilder: separatorBuilder,
            itemCount: 20,
            separatorBuilder: (BuildContext context, int index) => const SizedBox( height:10,)

          ),
        ),
      ),
    );
  }
}
