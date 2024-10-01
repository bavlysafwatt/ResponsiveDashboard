import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/income_section.dart';
import 'package:responsive_dashboard/components/my_card_section.dart';

class CardAndIncomeSection extends StatelessWidget {
  const CardAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 15),
        MyCardSection(),
        SizedBox(height: 15),
        Expanded(child: IncomeSection()),
        SizedBox(height: 15),
      ],
    );
  }
}
