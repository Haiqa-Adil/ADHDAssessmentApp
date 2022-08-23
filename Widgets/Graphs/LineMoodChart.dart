import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:adhdassessmentapp/Models/moods.dart';

class SimpleLineChart extends StatelessWidget {
  final bool animate;
  final List<DailyMood> mood;
  SimpleLineChart(this.mood, this.animate);

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(_createMoodSampleData(mood),
        defaultRenderer: charts.LineRendererConfig(includeArea: true),
        animationDuration: const Duration(milliseconds: 2500),
        domainAxis: const charts.EndPointsTimeAxisSpec(
            renderSpec: charts.SmallTickRendererSpec(
          lineStyle: charts.LineStyleSpec(color: charts.MaterialPalette.white),
          labelStyle: const charts.TextStyleSpec(
            color: charts.MaterialPalette.white,
          ),
        )),
        primaryMeasureAxis: charts.NumericAxisSpec(
            renderSpec: charts.GridlineRendererSpec(
                labelStyle: const charts.TextStyleSpec(
                  color: charts.MaterialPalette.transparent,
                ),
                lineStyle:
                    charts.LineStyleSpec(color: charts.MaterialPalette.white))),
        animate: animate);
  }

  static List<charts.Series<DailyMood, DateTime>> _createMoodSampleData(
      List<DailyMood> data) {
    // areaColorFn specifies that the area skirt will be light red.
    return [
      charts.Series<DailyMood, DateTime>(
        id: 'Mood',
        domainFn: (DailyMood mood, _) => mood.date,
        measureFn: (DailyMood mood, _) => mood.mood,

        colorFn: (_, __) => charts.MaterialPalette.white,
        // areaColorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault.lighter,
        data: data,
      ),
    ];
  }
}
