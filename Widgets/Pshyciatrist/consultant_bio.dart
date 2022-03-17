import 'package:flutter/material.dart';

class ConsultantBio extends StatelessWidget {
  const ConsultantBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.14,
        decoration: BoxDecoration(
          color: Color(0xfff1f1f1),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Color(0x8828203e),
                offset: Offset(1,1),
                blurRadius: 5
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: size.height  * 0.13,
              width: size.width * 0.25,
              child: Card(
                elevation: 5,
                shadowColor: Color(0xff28203e),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            Container(
              width: size.width * 0.42,
              height: double.maxFinite,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(top: size.height * 0.032),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Haiqa Adil',
                      style: TextStyle(
                          color: Color(0xff28203e),
                          fontSize: size.height * 0.035,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  SizedBox(
                    height:  size.height * 0.008,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Psychiatrist',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: size.height * 0.02,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                      ),

                    ),
                  ),/*
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Rating',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: size.height * 0.025,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),*/
                ],
              ),
            )
          ],
        ),
      );
  }
}
