import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

import '../../../data/transaction_history_model.dart';
import 'transaction_history_header.dart';
import 'transaction_history_tile.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  static List<TransactionHistoryModel> itemsList = [
    TransactionHistoryModel(
      date: '13 Apr, 2022 ',
      title: 'Cash Withdrawal',
      value: r'$20,129',
      isRed: true,
    ),
    TransactionHistoryModel(
      date: '13 Apr, 2022 at 3:30 PM',
      title: 'Landing Page project',
      value: r'$2,000',
      isRed: false,
    ),
    TransactionHistoryModel(
      date: '13 Apr, 2022 at 3:30 PM',
      title: 'Juni Mobile App project',
      value: r'$20,129',
      isRed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          '13 April 2022',
          style: StyleHelper.textStyle16Medium
              .copyWith(color: ColorHelper.textDarkGrayColor),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Column(
          children: itemsList
              .map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TransactionHistoryTile(transactionHistoryModel: e),
                  ))
              .toList(),
        )

      ],
    );
  }
}
