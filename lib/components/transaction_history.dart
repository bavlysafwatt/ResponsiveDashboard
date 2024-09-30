import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16.copyWith(
                color: const Color(0xff4EB7F2),
                decoration: TextDecoration.underline,
                decorationColor: const Color(0xff4EB7F2),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          '30 Septemper 2024',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
      ],
    );
  }
}
