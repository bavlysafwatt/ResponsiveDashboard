import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static List<Widget> items = [
    ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xff208CC8),
        ),
      ),
      title: const Text(
        'Design service',
        style: AppStyles.styleRegular16,
      ),
      trailing: const Text(
        '40%',
        style: AppStyles.styleMedium16,
      ),
    ),
    ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xff4EB7F2),
        ),
      ),
      title: const Text(
        'Design product',
        style: AppStyles.styleRegular16,
      ),
      trailing: const Text(
        '25%',
        style: AppStyles.styleMedium16,
      ),
    ),
    ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xff064061),
        ),
      ),
      title: const Text(
        'Product royalti',
        style: AppStyles.styleRegular16,
      ),
      trailing: const Text(
        '20%',
        style: AppStyles.styleMedium16,
      ),
    ),
    ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
          color: Color(0xffE2DECD),
        ),
      ),
      title: const Text(
        'Other',
        style: AppStyles.styleRegular16,
      ),
      trailing: const Text(
        '22%',
        style: AppStyles.styleMedium16,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => items[index],
    );
  }
}
