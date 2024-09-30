import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/transaction_item.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022 ',
      amount: '\$20,129',
      isWithdraw: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 ',
      amount: '\$2,000',
      isWithdraw: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 ',
      amount: '\$20,129',
      isWithdraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) =>
          TransactionItem(transactionModel: items[index]),
    );
  }
}
