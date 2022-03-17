import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/Screens/naviation_screen/Graphs.dart';
import 'package:login/Screens/naviation_screen/pshychiatrist.dart';

import '';
import '../Screens/naviation_screen/Disorder.dart';
import '../Screens/naviation_screen/home_screen.dart';

class Navigation_Bar extends StatefulWidget {
  const Navigation_Bar ({Key? key}) : super(key: key);

  @override
  _NavigationBarWidget createState() => _NavigationBarWidget();
}

class _NavigationBarWidget extends State<Navigation_Bar> {
  var screens = [
    HomeScreen(),
    DisOrders(),
    Psychiatrist(),
    Graphs()
  ];
  var title = const [
    'Home','Tools','DisOrders','Psyciatrist','Profile'
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: screens[pageIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.transparent,
        color: const Color(0xff28203e),
        buttonBackgroundColor: const Color(0xff28203e),
        animationDuration: const Duration(milliseconds: 250),
        index: pageIndex,
        items: [
          Icon(Icons.home_outlined, size: 30 , color: pageIndex == 0 ? Color(0xfff1f1f1) : Colors.white60,),
          Icon(Icons.question_answer_outlined, size: 30 , color: pageIndex == 1 ? Color(0xfff1f1f1) : Colors.white60,),
          Icon(Icons.medication, size: 30 , color: pageIndex == 2 ? Color(0xfff1f1f1) : Colors.white60,),
          Icon(Icons.auto_graph, size: 30, color: pageIndex == 3 ? Color(0xfff1f1f1) : Colors.white60,),
        ],
        onTap: (index){
          setState(() {
            pageIndex = index;
          });
        },

      ),
    );
  }
}
