import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses.dart';
import 'package:responsive_dashboard/components/custom_drawer.dart';
import 'package:responsive_dashboard/components/income_section.dart';
import 'package:responsive_dashboard/components/my_card_section.dart';
import 'package:responsive_dashboard/components/quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                AllExpenses(),
                SizedBox(height: 10),
                QuickInvoice(),
                SizedBox(height: 20),
                MyCardSection(),
                SizedBox(height: 15),
                IncomeSection(),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
