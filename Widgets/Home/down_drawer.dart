import 'package:flutter/material.dart';

import 'activities_tile.dart';

class DownDrawer extends StatelessWidget {
  const DownDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xfff1f1f1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50)
            ),
          ),
          padding: EdgeInsets.only(
              top: size.height * 0.03,
              left: 8,
              right: 8
          ),
          child: Column(
            children:[
              Align(
                alignment:Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0,
                      bottom: 8),

                  child: Text(
                    'Activities',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w900,
                        fontSize:  size.height * 0.03,
                        color: Colors.grey[800]
                    ),
                  ),
                ),
              ),
              const ActivitiesTile(
                img: 'Assets/images/writing60.png',
                text: 'Writing Activities',
                textColor: Colors.blueGrey ,
                shadowColor: Colors.blueGrey,
                categories: [
                  'Mood Journaling',
                  'Story Sharing',
                  'Asking For Help'
                ],
              ),
              ActivitiesTile(
                img: 'Assets/images/reading.png',
                text: 'Reading Activities',
                textColor: Colors.indigo.shade400 ,
                shadowColor: Colors.indigoAccent.shade100,
                categories: const [
                  'Inspiration',
                  'Heart Broken'
                ],
              ),
              ActivitiesTile(
                img: 'Assets/images/solution.png',
                text: 'Remedies',
                textColor: Colors.orangeAccent.shade200 ,
                shadowColor: Colors.amber.shade200,
                categories:const [
                  'Stress' ,
                  'Anxiety' ,
                  'Depression',
                  'ADHD',
                  'General'
                ],
              ),

            ],
          ),
        )
    );
  }
}
