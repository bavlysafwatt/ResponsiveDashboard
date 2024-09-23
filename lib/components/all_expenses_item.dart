import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/active_expenses_item.dart';
import 'package:responsive_dashboard/components/inactive_expenses_item.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InactiveExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
