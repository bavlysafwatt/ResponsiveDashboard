import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const CustomDotIndicator(isActive: false),
      ),
    );
  }
}
