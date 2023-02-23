// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_calculator/features/history/presentation/widgets/empty_graph.dart';
import 'package:bmi_calculator/features/homepage/domain/models/bmi_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/date_formatting/date_formatting.dart';

class BMIGraph extends ConsumerWidget {
  final List<BMIModel> bmiModels;
  const BMIGraph({
    super.key,
    required this.bmiModels,
  });

  @override
  Widget build(BuildContext context, ref) {
    return bmiModels.length < 2
        ? const EmptyGraph()
        : SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.sp),
                  padding: EdgeInsets.all(10.sp),
                  height: 18.h,
                  width: double.infinity,
                  child: LineChart(
                    LineChartData(
                      minY: 0,
                      minX: 0,
                      maxY: bmiModels.last.bmi + 20,
                      gridData: FlGridData(
                        show: true,
                      ),
                      lineTouchData: LineTouchData(
                          enabled: true,
                          touchTooltipData: LineTouchTooltipData(
                            getTooltipItems: (spot) {
                              return spot
                                  .map(
                                    (e) => LineTooltipItem(
                                      textAlign: TextAlign.left,
                                      children: [
                                        TextSpan(
                                          text: e.y.toStringAsFixed(1),
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                      'BMI: ',
                                      TextStyle(
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  )
                                  .toList();
                            },
                            fitInsideHorizontally: true,
                            // tooltipMargin: 20.sp,
                            fitInsideVertically: true,
                            tooltipBgColor:
                                Theme.of(context).secondaryHeaderColor,
                          )),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0),
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.2),
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.3),
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.5),
                                    Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.7),
                                  ])),
                          spots: [
                            for (double i = 0; i < bmiModels.length; i++)
                              FlSpot(i, bmiModels[i.toInt()].bmi)
                          ],
                          isCurved: true,
                        ),
                      ],
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              interval: 25,
                              getTitlesWidget: (d, title) {
                                return Text(
                                  title.formattedValue,
                                  style: TextStyle(fontSize: 10.sp),
                                );
                              }),
                        ),
                        // show: true,
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (d, title) {
                                return Text(
                                  DateFormatting()
                                      .shortDayShortMonth
                                      .format(bmiModels[d.toInt()].dateTime),
                                  style: TextStyle(fontSize: 10.sp),
                                );
                              }),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
