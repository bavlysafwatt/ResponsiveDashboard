import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/drop_down_item.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        DropDownItem(),
      ],
    );
  }
}
