import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_card_page_view.dart';
import 'package:responsive_dashboard/components/dots_indicator.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(height: 20),
          CustomCardPageView(),
          SizedBox(height: 10),
          DotsIndicator(),
        ],
      ),
    );
  }
}
