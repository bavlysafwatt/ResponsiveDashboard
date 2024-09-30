import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getPieChartData()),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xff208CC8),
          radius: 50,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0xff4EB7F2),
          radius: 50,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0xff064061),
          radius: 50,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0xffE2DECD),
          radius: 50,
          showTitle: false,
        ),
      ],
    );
  }
}
