import 'package:flutter/material.dart';

import '../widgets/all_expenses.dart';
import '../widgets/income.dart';
import '../widgets/mobile_body_view.dart';
import '../widgets/my_card_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/quick_invoice.dart';

class TabletLayoutView extends StatelessWidget {
  const TabletLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 46, child: NavigationDrawerWidget()),
        SizedBox(
          width: 28.0,
        ),
        Expanded(
          flex: 100,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: MobileBodyView(),
          ),
        ),
      ],
    ) ;
  }
}

