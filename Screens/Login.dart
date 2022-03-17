import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/Screens/naviation_screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Widgets/CustomClipper.dart';
import '../Widgets/Login/Role.dart';
import '../Widgets/Login/TextBox.dart';
import '../Widgets/navigation_bar.dart';

class Login  extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: size.height,
            width: size.width,
            color: const Color(0xfff1f1f1),
            child:Stack(
                children: [
                  Positioned(
                      top: -size.height/20,
                      left: size.width/2.35,
                      child: SizedBox(
                          height: size.height*0.5,
                          width : size.width*0.6,
                          child: Image.asset(
                            'Assets/images/doctors.png',
                            filterQuality: FilterQuality.high,)
                      )
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipPath(
                          clipper: DiagonalLine(),
                          child: Container(
                            height: size.height*0.8,
                            width: size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff20283e),
                            ),
                          )
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: size.height/6 ,left: size.width/12),
                          child: Column(

                            children: [
                              Text('Login',
                                style: TextStyle(
                                    color: Color(0xff20283e),
                                    fontFamily: 'ConcertOne',
                                    fontWeight: FontWeight.w900,
                                    fontSize: size.height/15
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height:size.height/18.5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0 , right: 16 , bottom: 36),
                          child: Card(
                            elevation: 5,
                            color: Colors.transparent,
                            shadowColor: Colors.black26,
                            child: RichText(
                              text:TextSpan(text:' Who are you?',
                                style: TextStyle(
                                    fontSize: size.height/35,
                                    fontFamily: 'Candal',
                                    fontWeight: FontWeight.w900,
                                    color: const Color(0xff20283e)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                          height:size.height/50),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTab('Assets/images/parent.png','PARENT',Colors.teal),
                          CustomTab('Assets/images/student.png','STUDENT',Colors.orange),
                          CustomTab('Assets/images/teacher.png','TEACHER',Colors.lightBlue)
                        ],
                      ),


                      const Expanded(child: SizedBox()),

                      SizedBox(
                          height:size.height/50),
                      CustomText(icon: Icons.person, hintText: 'User Name', isObscure: false),
                      SizedBox(
                          height:size.height/40),

                      CustomText(icon: Icons.key, hintText: 'Password', isObscure: true),
                      SizedBox(
                          height:size.height/90),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:  size.height * 0.03),
                            child: Checkbox(
                                value: isChecked,
                                onChanged: (val){
                                  setState((){
                                    isChecked = !isChecked;
                                  });
                                },
                              activeColor: Colors.white,
                              autofocus: true,
                              checkColor: Color(0xfffcbacb),
                              hoverColor: Colors.white,
                              tristate: true,
                              fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                            ),
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: size.height/50,
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height:size.height/40),
                      TextButton(
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
                              'Login',
                              style: TextStyle(

                                  fontFamily: 'Ubuntu',
                                  fontSize: size.height/40,
                                  color: Colors.white
                              ),

                            ),
                          )
                      ),
                      SizedBox(
                          height:size.height/50),
                      const Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 35.0,
                            left: 22,
                          right: 22
                        ),
                        child: FittedBox(
                          child: RichText(
                            text:TextSpan(text:'New to adhd assessment app?',
                                style: TextStyle(
                                    fontSize: size.height/40,
                                    fontFamily: 'PoiretOne',
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xaaffffff)
                                ),
                                children: [
                                  TextSpan(
                                    text: ' SignUp',
                                    style: TextStyle(
                                        fontSize: size.height/35,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic
                                    ),
                                  )
                                ]
                            ),
                          ),
                        ),
                      ),


                    ],
                  )
                ]
            )  ,
          ),
        )
    );
  }
}

