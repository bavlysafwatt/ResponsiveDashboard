import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/latest_transaction_list_view.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 10),
        const LatestTransactionListView(),
      ],
    );
  }
}
