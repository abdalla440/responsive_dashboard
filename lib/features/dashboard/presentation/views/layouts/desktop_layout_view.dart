import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/my_card_widget.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/quick_invoice.dart';

import '../widgets/income.dart';
import '../widgets/navigation_drawer_widget.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(flex: 46, child: NavigationDrawerWidget()),
      SizedBox(
        width: 28.0,
      ),
      Expanded(
        flex: 177,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
                children: [
                  Expanded(
                    flex: 100,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        AllExpenses(),
                        SizedBox(
                          height: 24.0,
                        ),
                        QuickInvoice(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Expanded(
                      flex: 77,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40.0,
                          ),
                          MyCardWidget(),
                          SizedBox(
                            height: 24.0,
                          ),
                          Expanded(child: Income())
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 32.0,
      ),
    ]);
  }
}
