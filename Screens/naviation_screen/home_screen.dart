import 'package:flutter/material.dart';
import 'package:login/Screens/Login.dart';
import 'package:login/Widgets/Home/activities_tile.dart';
import 'package:login/Widgets/Home/down_drawer.dart';
import 'package:login/Widgets/Home/feelings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              color: Color(0xff28203e),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Card(
                            color: Colors.white24,
                            child: Padding(
                              padding: EdgeInsets.all(size.height * 0.0005),
                              child: IconButton(
                                icon: Icon(
                                    Icons.menu_rounded,
                                  color:const Color(0xfff1f1f1),
                                  size: size.height * 0.04,
                                ), onPressed: () { },
                              ),
                            ),
                          ),
                        ),
                    TextButton(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.remove('email');
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext ctx) => Login()));
                },
                style: TextButton.styleFrom(
                 // backgroundColor: Color(0x88fcbacb),
                 // shadowColor: Colors.white,

                ), child: Padding(
                      padding: const EdgeInsets.only(left:8.0 , right: 8),
                      child: Text(
                        'Logout',
                        style: TextStyle(

                            fontFamily: 'Ubuntu',
                            fontSize: size.height/40,
                            color: Colors.white
                        ),

                      ),
                    ),
                    )
                ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                                text: 'Hi,',
                                style: TextStyle(
                                  fontFamily: 'Aclonica',
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.height * 0.035,
                                    color: Colors.white70
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Haiqa',
                                    style: TextStyle(
                                      fontFamily: 'Aclonica',
                                        fontWeight: FontWeight.bold,
                                      //  fontStyle: FontStyle.italic,
                                        fontSize:  size.height * 0.04,
                                        color: Colors.white70
                                    ),
                                  )
                                ]
                            ),

                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Your story matters',
                            style: TextStyle(
                                fontFamily: 'PoiretOne',
                                fontWeight: FontWeight.w800,
                                fontSize:  size.height * 0.025,
                                color: Colors.white60
                            ),

                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Feeling(),
                    SizedBox(
                      height: size.height * 0.01
                    ),
                    Expanded(
                        child:
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xfff1f1f1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)
                            ),
                          ),
                          width: size.width,
                          child: Column(
                            children: [
                              SizedBox(
                                width: size.width * 0.1,
                                child:const Divider(
                                  thickness: 5,
                                  color: Colors.grey,
                                ),
                              ),
                              DownDrawer( )
                            ],
                          ),

                        )
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
