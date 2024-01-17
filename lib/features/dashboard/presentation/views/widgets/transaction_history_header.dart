import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: StyleHelper.textStyle20SemiBold(context),
        ),
        Text(
          'See all',
          style: StyleHelper.textStyle16Medium(context)
              .copyWith(color: ColorHelper.mainLightBlueColor),
        ),
      ],
    );
  }
}
