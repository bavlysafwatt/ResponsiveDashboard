import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/components/card_and_income_section.dart';
import 'package:responsive_dashboard/components/custom_drawer.dart';

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
          flex: 1072,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 604,
                      child: AllExpensesAndQuickInvoiveSection(),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      flex: 468,
                      child: CardAndIncomeSection(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }
}
