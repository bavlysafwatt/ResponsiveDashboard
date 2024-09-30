import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DropDownItem extends StatelessWidget {
  const DropDownItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: const Color(0xffF1F1F1)),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(width: 15),
          SvgPicture.asset('assets/images/arrow-down.svg'),
        ],
      ),
    );
  }
}