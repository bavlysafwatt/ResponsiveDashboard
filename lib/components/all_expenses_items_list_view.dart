import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses_item.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/assets_gen.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final allExpensesItems = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: 20129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: 20129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: 20129,
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: allExpensesItems
            .asMap()
            .entries
            .map(
              (e) => Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    selectedIndex = e.key;
                  }),
                  child: AllExpensesItem(
                    allExpensesItemModel: e.value,
                    isActive: e.key == selectedIndex,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
