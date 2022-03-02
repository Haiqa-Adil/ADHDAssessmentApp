import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Widgets/Graphs/LineMoodChart.dart';

import '../../Models/moods.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar  > with SingleTickerProviderStateMixin{
  late final TabController _tabController;

  @override
  void initState(){
    _tabController =  TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
          children:[
            Card(
              color: Color(0xff28203e),
              shadowColor: Color(0xff28203e),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                    controller: _tabController,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Color(0xfff1f1f1),
                    labelStyle: TextStyle(
                      fontSize: size.height * 0.025
                    ),
                    indicatorColor: Colors.black,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff9ccb),

                    ),
                    tabs:const [
                      Tab(
                        text: 'Mood',
                      ),
                      Tab(
                        text: 'Your Entries',
                      )
                    ]
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
                child: TabBarView(

                    controller: _tabController,
                    children: [
                      SimpleLineChart(mood,true),
                      Text('Entries'),
                    ]),
              ),
            )
          ],
        );
  }
}


final mood = [
  DailyMood(DateTime.utc(2022,2,28),2),
  DailyMood(DateTime.utc(2022,2,27),1),
  DailyMood(DateTime.utc(2022,2,23),2),
  DailyMood(DateTime.utc(2022,2,24),4),
  DailyMood(DateTime.utc(2022,2,22),3),
  DailyMood(DateTime.utc(2022,2,20),1),
  DailyMood(DateTime.utc(2022,2,19),2),
  DailyMood(DateTime.utc(2022,3
      ,15),5),
];