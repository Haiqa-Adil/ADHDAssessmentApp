import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:login/Models/moods.dart';

class SimpleLineChart extends StatelessWidget {
  final bool animate;
  final List<DailyMood> mood;
  SimpleLineChart(this.mood, this.animate);


  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
        _createMoodSampleData(mood),
        defaultRenderer: charts.LineRendererConfig(includeArea: true),
        animationDuration: Duration(milliseconds: 2500),
        domainAxis: charts.EndPointsTimeAxisSpec(),
        animate: animate);
  }

  static List<charts.Series<DailyMood, DateTime>> _createMoodSampleData(List<DailyMood> data) {
    // areaColorFn specifies that the area skirt will be light red.
    return [
      charts.Series<DailyMood, DateTime>(
        id: 'Mood',
        domainFn: (DailyMood mood ,_) => mood.date,
        measureFn: (DailyMood mood , _) => mood.mood,

        colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault,
        areaColorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault.lighter,
        data: data,
      ),

    ];
  }
}
