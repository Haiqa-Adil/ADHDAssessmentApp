import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Screens/ExercisesScreen/Catalog.dart';

class ActivitiesTile extends StatelessWidget {
  const ActivitiesTile(
      {Key? key,
      required this.img,
      required this.text,
      required this.textColor,
      required this.shadowColor,
      required this.categories,
      required this.categoryName})
      : super(key: key);

  final String img;
  final String text;
  final Color textColor;
  final Color shadowColor;
  final String categoryName;
  final List<String> categories;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Color(0xff28203e),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Catalog(
                  name: categoryName,
                  categories: categories,
                )));
      },
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: size.height * 0.02, horizontal: 8.0),
        child: Card(
          elevation: 15,
          shadowColor: shadowColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // if you need this
              side: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 3,
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: ListTile(
              leading: Image.asset(img),
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.03,
                      color: textColor),
                ),
              ),
              // subtitle: Text(''),
            ),
          ),
        ),
      ),
    );
  }
}
