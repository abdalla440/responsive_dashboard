import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

class AllExpensesWidgetHeader extends StatelessWidget {
  const AllExpensesWidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'All Expenses',
          style: StyleHelper.textStyle20SemiBold(context),
        ),
        const Spacer(),
        DropdownMenu(
            // hintText: 'Monthly',
            inputDecorationTheme: InputDecorationTheme(

              border: OutlineInputBorder(

                borderRadius: BorderRadius.circular(12.0),

                // borderSide: const BorderSide(color: ColorHelper.containerF1GrayColor,
                // style: BorderStyle.solid)
              ),
            ),
            initialSelection: 0,
            selectedTrailingIcon: Transform.rotate(
              angle: 90*(pi/180),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
            trailingIcon: Transform.rotate(
              angle: -90*(pi/180),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),

            dropdownMenuEntries: const <DropdownMenuEntry>[
              DropdownMenuEntry(value: 0, label: 'Monthly'),
              DropdownMenuEntry(value: 1, label: 'Yearly'),
              DropdownMenuEntry(value: 2, label: 'Daily'),
            ])
      ],
    );
  }
}
