import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xff208CC8),
            ),
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'Design service',
              style: AppStyles.styleRegular16(context),
            ),
          ),
          trailing: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '40%',
              style: AppStyles.styleMedium16(context),
            ),
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
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'Design product',
              style: AppStyles.styleRegular16(context),
            ),
          ),
          trailing: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '25%',
              style: AppStyles.styleMedium16(context),
            ),
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
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'Product royalti',
              style: AppStyles.styleRegular16(context),
            ),
          ),
          trailing: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '20%',
              style: AppStyles.styleMedium16(context),
            ),
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
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              'Other',
              style: AppStyles.styleRegular16(context),
            ),
          ),
          trailing: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '22%',
              style: AppStyles.styleMedium16(context),
            ),
          ),
        ),
      ],
    );
  }
}
