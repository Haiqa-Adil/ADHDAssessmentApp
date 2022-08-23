import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Screens/SignUp.dart';
import 'package:adhdassessmentapp/Widgets/Login/Custom_text_box.dart';
import 'package:adhdassessmentapp/Widgets/Login/background.dart';
import 'package:adhdassessmentapp/Widgets/Login/login_navbar_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Widgets/CustomClipper.dart';
import '../Widgets/Login/CheckBox.dart';
import '../Widgets/Login/Role.dart';
import '../Widgets/Login/TextBox.dart';
import '../Widgets/navigation_bar.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: ClampingScrollPhysics(),
      child: Container(
        height: size.height,
        width: size.width,
        color: const Color(0xfff1f1f1),
        child: Stack(children: [
          LoginBackground(size: size),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height / 6, left: size.width / 12),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Color(0xff20283e),
                            fontFamily: 'ConcertOne',
                            fontWeight: FontWeight.w900,
                            fontSize: size.height / 15),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height / 18.5),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                  ),
                  child: Card(
                    elevation: 5,
                    color: Colors.transparent,
                    shadowColor: Colors.black26,
                    child: Text(
                      ' Who are you?',
                      style: TextStyle(
                          fontSize: size.height / 35,
                          fontFamily: 'Candal',
                          fontWeight: FontWeight.w900,
                          color: const Color(0xff20283e)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height / 50 + 36),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomTab(
                            'Assets/images/parent.png', 'PARENT', Colors.teal),
                        CustomTab('Assets/images/student.png', 'STUDENT',
                            Colors.orange),
                        CustomTab('Assets/images/teacher.png', 'TEACHER',
                            Colors.lightBlue)
                      ],
                    ),
                    if (_formKey.currentState != null)
                      if (_formKey.currentState!.validate())
                        SizedBox(
                          height: size.height / 40,
                        )
                      else
                        SizedBox(
                          height: size.height / 80,
                        )
                    else
                      SizedBox(
                        height: size.height / 80,
                      ),
                    CustomText(
                        icon: Icons.person,
                        hintText: 'Email',
                        isObscure: false),
                    if (_formKey.currentState != null)
                      if (_formKey.currentState!.validate())
                        SizedBox(
                          height: size.height / 40,
                        )
                      else
                        SizedBox(
                          height: size.height / 80,
                        )
                    else
                      SizedBox(
                        height: size.height / 80,
                      ),
                    CustomText(
                        icon: Icons.key, hintText: 'Password', isObscure: true),
                    if (_formKey.currentState != null)
                      if (_formKey.currentState!.validate())
                        SizedBox(
                          height: size.height / 40,
                        )
                      else
                        SizedBox(
                          height: size.height / 80,
                        )
                    else
                      SizedBox(
                        height: size.height / 80,
                      ),
                    const CustomCheckBox(),
                    if (_formKey.currentState != null)
                      if (_formKey.currentState!.validate())
                        SizedBox(
                          height: size.height / 40,
                        )
                      else
                        SizedBox(
                          height: size.height / 80,
                        )
                    else
                      SizedBox(
                        height: size.height / 40,
                      ),
                    CustomTextBox(
                      text: 'Login',
                      form: _formKey,
                    )
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              const NavText(
                  text: 'New to adhd assessment app?', childText: 'SignUp')
            ],
          )
        ]),
      ),
    ));
  }
}
