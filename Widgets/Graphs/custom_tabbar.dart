import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Widgets/Graphs/LineMoodChart.dart';
import 'package:adhdassessmentapp/Widgets/Graphs/entries_graph.dart';

import '../../Models/moods.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Card(
          color: Color(0xff28203e),
          shadowColor: Color(0xff28203e),
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: TabBar(
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                labelColor: Color(0xfff1f1f1),
                labelStyle: TextStyle(
                    fontSize: size.height * 0.02, fontFamily: 'Aclonica'),
                indicatorColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffff9ccb),
                ),
                tabs: const [
                  Tab(
                    text: 'Mood',
                  ),
                  Tab(
                    text: 'Your Entries',
                  )
                ]),
          ),
        ),
        Expanded(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
            child: TabBarView(controller: _tabController, children: [
              Card(
                color: Color(0xdd28203e),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '',
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Very DisAppointed',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'DisAppointed',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Normal',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                'Happy',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Very Happy',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                        width: size.width * 0.9,
                        child: SimpleLineChart(mood, true)),
                  ]),
                ),
              ),
              Container(
                  color: Color(0xff28203e), child: SimpleScatterPlotChart())
            ]),
          ),
        )
      ],
    );
  }
}

final mood = [
  DailyMood(DateTime.utc(2022, 2, 20), 0),
  DailyMood(DateTime.utc(2022, 2, 21), 2),
  DailyMood(DateTime.utc(2022, 2, 22), 1),
  DailyMood(DateTime.utc(2022, 2, 23), 3),
  DailyMood(DateTime.utc(2022, 2, 24), 0),
  DailyMood(DateTime.utc(2022, 2, 25), 1),
  DailyMood(DateTime.utc(2022, 2, 26), 0),
  DailyMood(DateTime.utc(2022, 2, 27), 2),
  DailyMood(DateTime.utc(2022, 2, 28), 1),
  DailyMood(DateTime.utc(2022, 3, 1), 3),
  DailyMood(DateTime.utc(2022, 3, 2), 0),
  DailyMood(DateTime.utc(2022, 3, 3), 2),
  DailyMood(DateTime.utc(2022, 3, 4), 4),
  DailyMood(DateTime.utc(2022, 3, 6), 3),
  DailyMood(DateTime.utc(2022, 3, 7), 1),
  DailyMood(DateTime.utc(2022, 3, 8), 4),
  DailyMood(DateTime.utc(2022, 3, 10), 2),
  DailyMood(DateTime.utc(2022, 3, 12), 5),
  DailyMood(DateTime.utc(2022, 3, 15), 4),
  DailyMood(DateTime.utc(2022, 3, 19), 2),
];
