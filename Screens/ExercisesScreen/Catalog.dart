import 'package:flutter/material.dart';
import 'package:login/Screens/ExercisesScreen/journal.dart';

import '../../Models/global_values.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key, required this.categories}) : super(key: key);

  final List<String> categories;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        backgroundColor: Color(0xff28203e),
      ),
        body: Container(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.03
          ),
          color: Color(0xfff1f1f1),
          child: SizedBox(
            height: size.height * 0.75,
            child: GridView.count(

              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.05,
                horizontal: size.width * 0.02
              ),
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 3/2.5,

              // Generate 100 widgets that display their index in the List.
              children: List.generate(categories.length, (index) {
                return //(index % 2 != 0 && index == categories.length - 1) ?
                InkWell(
                  splashColor: Color(0xff28203e),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Journal()
                    )
                    );

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // if you need this
                      ),
                    color: colorCodes[(index + 1) % colorCodes.length].withOpacity(0.5),
                    child: Center(
                      child: Text(
                        categories[index],
                        style:  TextStyle(
                          fontFamily: 'Ubuntu',
                          color: Colors.white,
                          fontSize: size.height * 0.03,
                          fontWeight: FontWeight.bold
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center,
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
