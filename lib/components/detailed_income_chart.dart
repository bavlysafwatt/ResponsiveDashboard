import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(getPieChartData()),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40%',
          value: 40,
          color: const Color(0xff208CC8),
          radius: activeIndex == 0 ? 60 : 50,
          titleStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: activeIndex == 0 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 60 : 50,
          titleStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: activeIndex == 1 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 1 ? 2 : null,
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          color: const Color(0xff064061),
          radius: activeIndex == 2 ? 60 : 50,
          titleStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: activeIndex == 2 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Other' : '22%',
          value: 22,
          color: const Color(0xffE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
          titleStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: activeIndex == 3 ? null : Colors.white),
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
        ),
      ],
    );
  }
}
