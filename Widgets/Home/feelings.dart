import 'package:flutter/material.dart';
import 'emojis.dart';

class Feeling extends StatelessWidget {
  const Feeling({Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,bottom: 20),
        child: Column(
          children: [
             Text("How are you feeling today ?",
              style: TextStyle(
                fontFamily: 'Candal',
                  fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.02
            ),),
            SizedBox.fromSize(
              size:const Size.fromHeight(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Emoji(emoji: "😊"),
                Emoji(emoji: "🙂"),
                Emoji(emoji: "😐"),
                Emoji(emoji: "😣"),
                Emoji(emoji: "😞"),

              ],
            )
          ],
        ),
      ),
    );
  }
}
