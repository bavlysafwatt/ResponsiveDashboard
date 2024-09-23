import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses_header.dart';
import 'package:responsive_dashboard/components/all_expenses_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 20),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
