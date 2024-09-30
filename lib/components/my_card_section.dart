import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_card_page_view.dart';
import 'package:responsive_dashboard/components/dots_indicator.dart';
import 'package:responsive_dashboard/components/transaction_history.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          const SizedBox(height: 20),
          CustomCardPageView(pageController: pageController),
          const SizedBox(height: 10),
          DotsIndicator(currentPageIndex: currentPageIndex),
          const SizedBox(height: 40),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
