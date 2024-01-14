import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';

import 'latest_transaction.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24.0,),
            LatestTransaction()
          ],
        )
    );
  }
}
