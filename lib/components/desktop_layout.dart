import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses.dart';
import 'package:responsive_dashboard/components/custom_drawer.dart';
import 'package:responsive_dashboard/components/income_section.dart';
import 'package:responsive_dashboard/components/my_card_section.dart';
import 'package:responsive_dashboard/components/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 280,
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 604,
          child: Column(
            children: [
              SizedBox(height: 20),
              AllExpenses(),
              SizedBox(height: 10),
              QuickInvoice(),
              SizedBox(height: 20),
            ],
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          flex: 468,
          child: Column(
            children: [
              SizedBox(height: 15),
              MyCardSection(),
              SizedBox(height: 24),
              IncomeSection(),
            ],
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
