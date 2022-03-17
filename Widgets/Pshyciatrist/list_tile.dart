
import 'package:flutter/material.dart';

class ListTileData extends StatelessWidget {
  const ListTileData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var availability =const ["Monday" , "Tuesday" , "Thursday"];
    return Padding(
      padding: EdgeInsets.only(left: 8.0 , right: 8.0),
      child: Card(
        elevation: 20,
        shadowColor: Color(0xff28203e),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg",

            ),
          ),
          title:const Text(
              'Haiqa Adil'
          ),
          subtitle:const Padding(
            padding:  EdgeInsets.only(top: 7.0),
            child: Text('Specialist'),
          ),
          trailing: PopupMenuButton(
            icon:const  Icon(Icons.more_vert),
            itemBuilder: (context) => availability.map((day) =>
                PopupMenuItem<String>(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(day),
                    )
                )
            ).toList(),


          ),

        ),
      ),
    );
  }
}
