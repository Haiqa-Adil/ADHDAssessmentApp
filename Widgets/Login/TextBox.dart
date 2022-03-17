import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  late IconData icon;
  late String hintText;
  late bool isObscure;

  CustomText({required this.icon,required this.hintText,required this.isObscure});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width/1.2,
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(icon,
            color:const Color(0xfffcbacb),),
          filled: true,
          fillColor:const Color(0x88fcbacb),
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent,width: 0),
          ),

          hintText: hintText,
          hintStyle:const TextStyle(
              color: Colors.white
          ),
          isDense: true,

        ),
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }

}