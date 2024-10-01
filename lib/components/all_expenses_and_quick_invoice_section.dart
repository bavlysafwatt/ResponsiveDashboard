import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses.dart';
import 'package:responsive_dashboard/components/quick_invoice.dart';

class AllExpensesAndQuickInvoiveSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiveSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        AllExpenses(),
        SizedBox(height: 10),
        QuickInvoice(),
        SizedBox(height: 20),
      ],
    );
  }
}
