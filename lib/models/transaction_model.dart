class TransactionModel {
  final String title;
  final String subTitle;
  final String amount;
  final bool isWithdraw;

  const TransactionModel({
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.isWithdraw,
  });
}
