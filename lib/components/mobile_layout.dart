import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses.dart';
import 'package:responsive_dashboard/components/income_section.dart';
import 'package:responsive_dashboard/components/my_card_section.dart';
import 'package:responsive_dashboard/components/quick_invoice.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(height: 10),
            QuickInvoice(),
            SizedBox(height: 20),
            MyCardSection(),
            SizedBox(height: 15),
            IncomeSection(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
