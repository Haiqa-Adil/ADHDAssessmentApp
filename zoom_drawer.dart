import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:adhdassessmentapp/Screens/side_drawer.dart';

import 'Widgets/navigation_bar.dart';

class CustomZoomDrawer extends StatefulWidget {
  CustomZoomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomZoomDrawer> createState() => _CustomZoomDrawerState();
}

class _CustomZoomDrawerState extends State<CustomZoomDrawer> {
  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
    controller: _drawerController,
    style: DrawerStyle.Style1,
    menuScreen: SideDrawer(),
    mainScreen: Navigation_Bar(),
    borderRadius: 24.0,
    showShadow: true,
    angle: 0.0,
  //  backgroundColor: Color(0xff28203e),
    slideWidth: MediaQuery.of(context).size.width * 0.6,

    shadowLayer2Color: Color(0xfff1f1f1),
    openCurve: Curves.fastOutSlowIn,
    closeCurve: Curves.fastOutSlowIn,
    ),
    );
  }
}
