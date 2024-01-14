import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/quick_invoice_form.dart';
import 'latest_transaction.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24.0,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
          color: ColorHelper.containerF1GrayColor,
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
