import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/drop_down_item.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20,
              ),
              DropDownItem(),
            ],
          ),
        ],
      ),
    );
  }
}
