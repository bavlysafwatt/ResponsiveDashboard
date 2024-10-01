import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/all_expenses_item_header.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InactiveExpensesItem extends StatelessWidget {
  const InactiveExpensesItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: const Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(height: 50),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            '\$${allExpensesItemModel.price}',
            style: AppStyles.styleSemiBold24(context),
          )
        ],
      ),
    );
  }
}
