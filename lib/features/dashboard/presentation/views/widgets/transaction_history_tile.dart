import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';
import 'package:responsive_dashboard/features/dashboard/data/transaction_history_model.dart';

class TransactionHistoryTile extends StatelessWidget {
  const TransactionHistoryTile(
      {super.key, required this.transactionHistoryModel});

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorHelper.containerFAGrayColor,
      ),
      child: ListTile(
        title: Text(transactionHistoryModel.title,
            style: StyleHelper.textStyle16SemiBold(context)),
        subtitle: Text(transactionHistoryModel.date,
            style: StyleHelper.textStyle16Regular(context)
                .copyWith(color: ColorHelper.textDarkGrayColor)),
        trailing: Text(
          transactionHistoryModel.value,
          style: StyleHelper.textStyle20SemiBold(context).copyWith(
            color: transactionHistoryModel.isRed
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
