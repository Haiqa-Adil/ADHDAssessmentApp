import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget{
  CustomTab(this.image,this.person,this.color);

  late String image;
  late String person;
  late Color color;
  late bool isStudent;
  late bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(){
          isSelected = true;
        }
      },
      child: Container(
        height: size.height/5.5,
        width: size.width/3.5,
        child: Column(
          children: [
            SizedBox(
              height: size.height/9,

              child: CircleAvatar(

                radius: size.height/16,
                backgroundImage:  AssetImage(image),
              ),
            ),
            SizedBox(
                height: size.height * 0.01
            ),
            Text(person,
              style: TextStyle(
                  color: color,
                  fontSize: size.height/45,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w900
              ),
            )


          ],
        ),
      ),
    );
  }

}
