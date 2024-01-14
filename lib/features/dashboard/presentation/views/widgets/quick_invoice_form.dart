import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/custom_text_field.dart';

import '../../../../../core/utils/color_helper.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [
          Expanded(
            child: CustomTextField(
                title: 'Customer name', hintText: 'Type customer name'),
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: CustomTextField(
                title: 'Customer Email', hintText: 'Type customer email'),
          ),
        ]),
        SizedBox(
          width: 24.0,
        ),
        Row(children: [
          Expanded(
              child: CustomTextField(
                  title: 'Item name', hintText: 'Type customer name')),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
              child: CustomTextField(title: 'Item mount', hintText: 'USD')),
        ]),
        SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextButton(
                text: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: ColorHelper.mainLightBlueColor,
              ),
            ),
            SizedBox(
              width: 24.0,
            ),

            Expanded(
              child: CustomTextButton(
                text: 'Add more details',
                ),
            )
          ],
        )
      ],
    );
  }
}
