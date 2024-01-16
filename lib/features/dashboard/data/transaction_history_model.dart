class TransactionHistoryModel {
  final String date, title, value;
  final bool isRed;

  TransactionHistoryModel(
      {required this.date,
      required this.title,
      required this.value,
      required this.isRed});
}
