import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_card.dart';

class CustomCardPageView extends StatelessWidget {
  const CustomCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      children: List.generate(
        3,
        (index) => const CustomCard(),
      ),
    );
  }
}
