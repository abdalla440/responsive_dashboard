import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_helper.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/all_expenses_item.dart';

import '../../../../../core/widgets/custom_background_container.dart';
import '../../../data/all_expenses_model.dart';
import 'all_expenses_widget_header.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
  final List<AllExpensesModel> itemsList = [
    AllExpensesModel(
        title: 'Balance',
        data: 'April 2022',
        value: r'$20,129',
        imagePath: AssetsHelper.iconsBalanceIcon),
    AllExpensesModel(
        title: 'Income',
        data: 'April 2022',
        value: r'$20,129',
        imagePath: AssetsHelper.iconsIncomeIcon),
    AllExpensesModel(
        title: 'Expenses',
        data: 'April 2022',
        value: r'$20,129',
        imagePath: AssetsHelper.iconsExpensesIcon)
  ];
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(

      child: Column(
        children: [
          const AllExpensesWidgetHeader(),
          const SizedBox(
            height: 16.0,
          ),
          Row(

            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedItem = 0;
                    });
                  },
                  child: AllExpensesItem(
                    isActive: selectedItem == 0,
                    allExpensesModel: itemsList[0],
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedItem = 1;
                    });
                  },
                  child: AllExpensesItem(
                    isActive: selectedItem == 1,
                    allExpensesModel: itemsList[1],
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedItem = 2;
                    });
                  },
                  child: AllExpensesItem(
                    isActive: selectedItem == 2,
                    allExpensesModel: itemsList[2],
                  ),
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}
