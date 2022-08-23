import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Widgets/Login/background.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Widgets/CustomClipper.dart';
import '../Widgets/Login/CheckBox.dart';
import '../Widgets/Login/Custom_text_box.dart';
import '../Widgets/Login/Role.dart';
import '../Widgets/Login/TextBox.dart';
import '../Widgets/navigation_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final PageController _scrollController = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var isChecked;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                          'SignUp',
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
                SizedBox(height: size.height / 11),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16, bottom: 45),
                    child: Card(
                      elevation: 5,
                      color: Colors.transparent,
                      shadowColor: Colors.black26,
                      child: RichText(
                        text: TextSpan(
                          text: '  Enter your  ',
                          style: TextStyle(
                            fontSize: size.height / 35,
                            fontFamily: 'Candal',
                            fontWeight: FontWeight.w900,
                            color: const Color(0xff20283e),
                          ),
                          children: [
                            TextSpan(
                                text: 'details',
                                style: TextStyle(
                                  fontSize: size.height / 35,
                                  fontFamily: 'Candal',
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xbbfccacb),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
/*
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomTab('Assets/images/parent.png','PARENT',Colors.teal),
                        CustomTab('Assets/images/student.png','STUDENT',Colors.orange),
                        CustomTab('Assets/images/teacher.png','TEACHER',Colors.lightBlue)
                      ],
                    ),


                    const Expanded(child: SizedBox()),
                    CustomText(icon: Icons.person, hintText: 'Full Name', isObscure: false),
                    SizedBox(
                        height:size.height/40),
                    CustomText(icon: Icons.person, hintText: 'Email', isObscure: false),
                    SizedBox(
                        height:size.height/40),
                    CustomText(icon: Icons.person, hintText: 'Phone Number', isObscure: false),
                    SizedBox(
                        height:size.height/40),

                    CustomText(icon: Icons.key, hintText: 'Password', isObscure: true),
                    SizedBox(
                        height:size.height/40),

                    CustomText(icon: Icons.key, hintText: 'Confirm Password', isObscure: true),
                    SizedBox(
                        height:size.height/25),
                    Container(
                      padding: EdgeInsets.only(right: size.width * 0.1),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () async{
                            if(isChecked){
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              prefs.setString('email', 'haiqaadil@gmail.com');

                            }
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext ctx) => Navigation_Bar()
                                )
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0x88fcbacb),
                            shadowColor: Colors.white,

                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0 , right: 8),
                            child: Text(
                              'Next',
                              style: TextStyle(

                                  fontFamily: 'Ubuntu',
                                  fontSize: size.height/40,
                                  color: Colors.white
                              ),

                            ),
                          )
                      ),
                    ),
                    Form(
                        key: _formKey,
                        child: Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomTab('Assets/images/parent.png','PARENT',Colors.teal),
                                  CustomTab('Assets/images/student.png','STUDENT',Colors.orange),
                                  CustomTab('Assets/images/teacher.png','TEACHER',Colors.lightBlue)
                                ],
                              ),
                              SizedBox(
                                  height:size.height/50),
                              CustomText(icon: Icons.person, hintText: 'User Name', isObscure: false),
                              SizedBox(
                                  height:size.height/40),
                              CustomText(icon: Icons.key, hintText: 'Password', isObscure: true),
                              SizedBox(
                                  height:size.height/90),
                              const CustomCheckBox(),
                              SizedBox(
                                  height:size.height/40),
                              const CustomTextBox(text: 'Login')

                            ],
                          ),
                        ),
                      ),
 */
                Form(
                  key: _formKey,
                  child: Expanded(
                    child: PageView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            CustomText(
                                icon: Icons.person,
                                hintText: 'Full Name',
                                isObscure: false),
                            SizedBox(height: size.height / 40),
                            CustomText(
                                icon: Icons.person,
                                hintText: 'Email',
                                isObscure: false),
                            SizedBox(height: size.height / 40),
                            CustomText(
                                icon: Icons.person,
                                hintText: 'Phone Number',
                                isObscure: false),
                            SizedBox(height: size.height / 40),
                            CustomText(
                                icon: Icons.key,
                                hintText: 'Password',
                                isObscure: true),
                            SizedBox(height: size.height / 40),
                            CustomText(
                                icon: Icons.key,
                                hintText: 'Confirm Password',
                                isObscure: true),
                            SizedBox(height: size.height / 25),
                            Container(
                              padding: EdgeInsets.only(right: size.width * 0.1),
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    _scrollController.animateTo(
                                        MediaQuery.of(context).size.width,
                                        duration: Duration(milliseconds: 2000),
                                        curve: Curves.elasticOut);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0x88fcbacb),
                                    shadowColor: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: size.height / 40,
                                          color: Colors.white),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomTab('Assets/images/parent.png', 'PARENT',
                                    Colors.teal),
                                CustomTab('Assets/images/student.png',
                                    'STUDENT', Colors.orange),
                                CustomTab('Assets/images/teacher.png',
                                    'TEACHER', Colors.lightBlue)
                              ],
                            ),
                            SizedBox(height: size.height / 50),
                            CustomText(
                                icon: Icons.person,
                                hintText: 'User Name',
                                isObscure: false),
                            SizedBox(height: size.height / 40),
                            CustomText(
                                icon: Icons.key,
                                hintText: 'Password',
                                isObscure: true),
                            SizedBox(height: size.height / 90),
                            const CustomCheckBox(),
                            SizedBox(height: size.height / 40),
                            CustomTextBox(
                              text: 'Login',
                              form: _formKey,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height / 20),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
