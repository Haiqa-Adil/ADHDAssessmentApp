
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:login/Models/disorders.dart';
import 'package:login/Screens/naviation_screen/Disorder.dart';
import 'package:login/Screens/naviation_screen/Graphs.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DisOrders(),
    );
  }
}


/*class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        value: 0.0,
        lowerBound: -1,
        upperBound:  1,
        duration: Duration(milliseconds: 250)
    )..repeat();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF20283E),
      child: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context,child)=> ClipPath(
                    clipper: HeaderPainter(_controller.value),
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        color:Color(0xFF6E0DD0),

                    )
                ),
              )
          ),
          Align(
            alignment: Alignment.topLeft,
            child: ClipPath(
              clipper: HeaderPainter(_controller.value),
              child: Container(
                color: Color(0xFF20283E),
                height: 290,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: ClipPath(
                  clipper: FooterPainter(),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                    color: Color(0xFF1c4e80),
                  )
              )
          ),

          Align(
              alignment: Alignment.bottomLeft,
              child: ClipPath(
                  clipper: FooterPainter(),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 280
                  )
              )
          ),
        ],
      ),
    );
  }
}
class HeaderPainter extends CustomClipper<Path> {

  HeaderPainter(this.move);
   late double move;
  double pi = math.pi;

  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    Path path = Path();
    // Path number 1
    path = Path();
    path.lineTo(0, size.height);
    var firstControlPoint = Offset(size.width/4,size.height * 0.65);
    var firstEndPoint = Offset(size.width/2,size.height * 0.8);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width/2 + size.width/4,size.height);
    var secondEndPoint = Offset(size.width,size.height/2);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


    var thirdControlPoint = Offset(size.width/2 + size.width/4,size.height);
    var thirdEndPoint = Offset(size.width,size.height/2);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


    var fourthControlPoint = Offset(size.width/2 + size.width/4,size.height);
    var fourthEndPoint = Offset(size.width,size.height/2);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);


    path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
class FooterPainter extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    Path path = Path();
    path = Path();
    path.lineTo(size.width, size.height / 5);
    path.cubicTo(size.width, size.height / 5, size.width * 0.94, size.height * 0.88,size.width * 0.65, size.height * 0.93);
    path.cubicTo(size.width * 0.36, size.height * 0.97, size.width / 5, size.height,size.width / 5, size.height);
    path.cubicTo(size.width / 5, size.height, size.width, size.height,size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height / 5,size.width, size.height / 5);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}*/
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: const Color.fromARGB(255, 32, 40, 62),
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipper(00,255,255),
              child: Container(
                width: size.width,
                height: size.height/3,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 255, 255),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 0, 255, 255)
                  ),
                ),
              ),
            )
          ],
        ),

      ),



      body:Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black12,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedTextKit(animatedTexts:[

                  TyperAnimatedText('Welcome',
                    textStyle: const TextStyle(
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w700,
                        fontSize: 50.0,
                        color: Colors.indigo
                    ),
                      speed: const Duration(milliseconds: 100)
                  ),

                  TyperAnimatedText('To',
                    textStyle: const TextStyle(
                        fontFamily: 'Aclonica',
                        color: Colors.indigo,
                        fontWeight: FontWeight.w400,
                        fontSize: 50.0
                    ),
                      speed: const Duration(milliseconds: 100)

                  ),
                  TyperAnimatedText('ADHD',
                    textStyle: const TextStyle(
                        fontFamily: 'Aclonica',
                        color: Colors.indigo,
                        fontWeight: FontWeight.w400,
                        fontSize: 50.0
                    ),
                      speed: const Duration(milliseconds: 100)
                  ),

                  TyperAnimatedText('Assessment',
                    textStyle: const TextStyle(
                        fontFamily: 'Aclonica',
                        color: Colors.indigo,
                        fontWeight: FontWeight.w400,
                        fontSize: 50.0
                    ),
                      speed: const Duration(milliseconds: 100)
                  ),


                  TyperAnimatedText('App',
                      textStyle: const TextStyle(
                          fontFamily: 'Aclonica',
                          fontWeight: FontWeight.w400,
                          color: Colors.indigo,
                          fontSize: 50.0
                      ),
                      speed: const Duration(milliseconds: 100)
                  ),
                ],

                  repeatForever: true,
                  isRepeatingAnimation: true,
                )
              ],
            ),
          )
        ],
      )*/
/*    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  WaveClipper(this.r , this.g , this.b);
  int r, g, b;
  @override
  Path getClip(Size size) {
    Path path = Path();
      path.lineTo(0, size.height *0.75);
      var firstStartPoint = Offset(size.width/4-size.width/5,size.height*0.8);
      var firstEndPoint = Offset(size.width/4 -size.width/6,size.height*0.75);
    path.quadraticBezierTo(firstStartPoint.dx, firstStartPoint.dy, firstEndPoint.dx,firstEndPoint.dy);


    var secondStartPoint = Offset(size.width/2-size.width/8,size.height*0.77);
    var secondEndPoint = Offset(size.width/2,size.height*0.8);
    path.quadraticBezierTo(secondStartPoint.dx, secondStartPoint.dy, secondEndPoint.dx,secondEndPoint.dy);


    var firstStartPoint = Offset(size.width/6-size.width/8,size.height/1.8);
    var firstEndPoint = Offset(size.width/6 +size.width/8,size.height/1.8);
    path.quadraticBezierTo(firstStartPoint.dx, firstStartPoint.dy, firstEndPoint.dx,firstEndPoint.dy);


    var firstStartPoint = Offset(size.width/6-size.width/8,size.height/1.8);
    var firstEndPoint = Offset(size.width/6 +size.width/8,size.height/1.8);
    path.quadraticBezierTo(firstStartPoint.dx, firstStartPoint.dy, firstEndPoint.dx,firstEndPoint.dy);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
*/