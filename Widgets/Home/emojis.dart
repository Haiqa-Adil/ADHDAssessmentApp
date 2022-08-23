import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  const Emoji({Key? key, required this.emoji}) : super(key: key);
  final String emoji ;

  @override
  _EmojiState createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  bool isCLicked = false;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(10.0) ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:  isCLicked ? Colors.white70 : Colors.white24,
        ),
        child: Text(widget.emoji
          ,style:const TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 22
          ),
        ),
      ),
      onTap: (){
        setState(() {
          if(isCLicked != null)
            isCLicked = !isCLicked;
          else
            isCLicked = true;
        });
      },
    );
  }
}
