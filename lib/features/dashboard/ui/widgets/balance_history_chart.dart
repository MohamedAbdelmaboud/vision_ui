import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BalanceHistoryChart extends StatelessWidget {
  const BalanceHistoryChart({super.key});

  static List<FlSpot> spots = [
    for (var i = 0; i < 11; i++)
      FlSpot(
        i.toDouble(),
        (Random().nextInt(5) + 0.5) * 10,
      ),
  ];

  static List<FlSpot> spots2 = [
    for (var i = 0; i < 11; i++)
      FlSpot(
        i.toDouble(),
        (Random().nextInt(4) + 0.5) * 10,
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(15),
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            getTouchedSpotIndicator: (barData, indicators) {
              return indicators.map((int index) {
                return TouchedSpotIndicatorData(
                  const FlLine(
                      color: Colors.transparent), // Line above touch indicator
                  FlDotData(
                    show: true, // Show the dot at the touched point
                    getDotPainter: (spot, percent, barData, index) =>
                        FlDotCirclePainter(
                      radius: 8, // Size of the circle dot
                      color: Colors.blueAccent,
                      strokeWidth: 2,
                      strokeColor: Colors.white,
                    ),
                  ),
                );
              }).toList();
            },
            touchTooltipData: LineTouchTooltipData(
                tooltipRoundedRadius: 5, // Rounded corners for the tooltip
                tooltipPadding: const EdgeInsets.all(8),
                tooltipMargin: 10,
                getTooltipColor: (touchedSpot) => Colors.white10,
                tooltipBorder: const BorderSide(color: Color(0xff0075FF))),
          ),
          clipData: const FlClipData.horizontal(),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  String month = '';
                  switch (value.toInt()) {
                    case 0:
                      month = 'Jan';
                      break;
                    case 1:
                      month = 'Feb';
                      break;
                    case 2:
                      month = 'Mar';
                      break;
                    case 3:
                      month = 'Apr';
                      break;
                    case 4:
                      month = 'May';
                      break;
                    case 5:
                      month = 'Jun';
                      break;
                    case 6:
                      month = 'Jul';
                      break;
                    case 7:
                      month = 'Aug';
                      break;
                    case 8:
                      month = 'Sep';
                      break;
                    case 9:
                      month = 'Oct';
                      break;
                    case 10:
                      month = 'Nov';
                      break;
                    case 11:
                      month = 'Dec';
                      break;
                  }
                  return Text(
                    month,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 10,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Text(
                      value.toInt().toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ),
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 50,
          borderData: FlBorderData(show: true),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              barWidth: 3,
              color: const Color(0xff0075FF),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff0075FF).withOpacity(0.3),
                    const Color(0xff0075FF).withOpacity(0.2),
                    const Color(0xff0075FF).withOpacity(0.1),
                    const Color(0xff0075FF).withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            LineChartBarData(
              spots: spots2,
              isCurved: true,
              barWidth: 3,
              color: const Color(0xff2CD9FF),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff2CD9FF).withOpacity(0.3),
                    const Color(0xff2CD9FF).withOpacity(0.2),
                    const Color(0xff2CD9FF).withOpacity(0.1),
                    const Color(0xff2CD9FF).withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
