import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/my_card_widget.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/quick_invoice.dart';

import '../widgets/navigation_drawer_widget.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: Row(children: [
        Expanded(flex: 46, child: NavigationDrawerWidget()),
        SizedBox(
          width: 28.0,
        ),
        Expanded(
          flex: 100,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24.0,
              ),
              QuickInvoice(),
            ],
          ),
        ),
        // SizedBox(width: 24.0,),
        // Expanded(
        //     flex:77,
        //
        //     child: MyCardWidget()),
      ]),
    );
  }
}
