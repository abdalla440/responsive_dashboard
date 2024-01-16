import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/quick_invoice.dart';

import 'all_expenses.dart';
import 'income.dart';
import 'my_card_widget.dart';

class MobileBodyView extends StatelessWidget {
  const MobileBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [

          AllExpenses(),
          SizedBox(
            height: 24.0,
          ),
          QuickInvoice(),
          SizedBox(
            height: 24.0,
          ),
          MyCardWidget(),
          SizedBox(
            height: 24.0,
          ),
          Income()
        ],
      ),
    );
  }
}
