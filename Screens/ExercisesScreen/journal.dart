import 'dart:math';

import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Models/global_values.dart';

class Journal extends StatelessWidget {
  Journal({Key? key}) : super(key: key);
  var ran = Random();
  final TextEditingController _controller = TextEditingController();
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int height = size.height ~/26;

    int  space = 0;
    int length = 0;
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Journal'),
        backgroundColor: const Color(0xff28203e),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Color(0xfff1f1f1),
        // color: colorCodes[ran.nextInt(13)].withOpacity(0.5),
        child: SingleChildScrollView(

          physics: const ClampingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.03,
                horizontal: size.width * 0.03
            ),
            child: Column(
              children: [
                TextFormField(
                    style: const TextStyle(
                        fontSize: 28,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold
                    ),
                    decoration: InputDecoration(
                      hintText: 'Title',
                      fillColor: Color(0xfff1f1f1).withOpacity(0.8),
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    )
                ),
                TextFormField(
                    controller: _controller,
                    scrollPhysics: const ScrollPhysics(),
                    onChanged: (val){
                      if(val.isNotEmpty && val[val.length - 1] == ' '){
                        if(length > val.length) {
                          space--;
                        } else if(length < val.length) {
                          space++;
                        }
                        length = val.length;
                        if(space > 249) {
                          _controller.text = val;
                        }
                      }
                    },
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'Ubuntu'
                    ),
                    decoration: InputDecoration(
                      hintText: 'Write Something',
                      fillColor: Color(0xfff1f1f1).withOpacity(0.8),
                      filled: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    )
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){},
        backgroundColor: Color(0xff28203e),
        label: Text('Submit',
          style: TextStyle(
            fontFamily: 'Roboto',
          )
        ),
      icon: Icon(Icons.save_rounded),

        ),

    );
  }
}
