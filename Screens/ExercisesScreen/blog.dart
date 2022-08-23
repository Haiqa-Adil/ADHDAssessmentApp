import 'dart:math';

import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Screens/ExercisesScreen/VideoPlayer.dart';
import 'package:adhdassessmentapp/Screens/ExercisesScreen/journal.dart';

import '../../Models/global_values.dart';

class Blogs extends StatelessWidget {
  Blogs({Key? key}) : super(key: key);

  var ranColor = Random();
  var ranHeight = Random();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Blogs'),
          backgroundColor: Color(0xff28203e),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.03
          ),
          color: Color(0xfff1f1f1),
          child: SizedBox(
            child: GridView.count(

              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.02,
                  horizontal: size.width * 0.01
              ),
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 3/4,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(5, (index) {
                return //(index % 2 != 0 && index == categories.length - 1) ?
                  InkWell(
                    splashColor: Color(0xff28203e),
                    onTap: (){

                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // if you need this
                      ),
                      color: colorCodes[ranColor.nextInt(13)].withOpacity(0.4),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 8,
                            left: size.width * 0.02,
                            right: size.width * 0.02
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Girls Suicidal Thought',
                              style:  TextStyle(
                                  fontFamily: 'Ubuntu',
                                  color: Colors.white,
                                  fontSize: size.height * 0.03,
                                  fontWeight: FontWeight.bold
                              ),
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,

                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Achilles is traumatized by Iphigenia’s death and Patroclus tries to console him. Achilles a'
                                  'sks Patroclus what it was like to kill'
                                  ' Clysonymus in childhood. They continue lamenting Iphigenia’s’ death, when suddenly '
                                  'Achilles grabs and kills a deadly snake beside them.Days later '
                                  'as they approach the shores of Troy, the soldiers find the Trojans already'
                                  ' at the bay, with Hector in a chariot. Achilles throws a spear from an impossible'
                                  ' distance and strikes a Trojan down. Agamemnon’s fleet is in awe by Achilles’ feat. '
                                  'In response, Hector throws his own spear, killing Protesilaus, the Prince of Phylac',
                              style:  TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w500
                              ),
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ;

              }),
            ),
          ),
        )
    );
  }
}
