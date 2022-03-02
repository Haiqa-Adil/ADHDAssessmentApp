import 'package:flutter/material.dart';

import '../Widgets/CustomClipper.dart';
import '../Widgets/Login/Role.dart';
import '../Widgets/Login/TextBox.dart';

class Test  extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

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
                          height:size.height/17.5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                          height:size.height/40),
                      TextButton(onPressed: (){},
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
                          )),
                      SizedBox(
                          height:size.height/50),
                      const Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
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


                    ],
                  )
                ]
            )  ,
          ),
        )
    );
  }
}

