import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses.dart';
import 'package:responsive_dashboard/components/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

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
          child: Column(
            children: [
              SizedBox(height: 20),
              Expanded(child: AllExpenses()),
              SizedBox(height: 20),
              Expanded(child: AllExpenses()),
              SizedBox(height: 20),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
