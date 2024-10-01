import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/detailed_income_chart.dart';
import 'package:responsive_dashboard/components/income_chart.dart';
import 'package:responsive_dashboard/components/income_details.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width < SizeConfig.desktop ||
            MediaQuery.sizeOf(context).width >= 1324
        ? const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          )
        : const Expanded(child: DetailedIncomeChart());
  }
}
