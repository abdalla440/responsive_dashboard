import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/all_expenses_item_header.dart';

import '../../../data/all_expenses_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesModel,
    required this.isActive,
  });

  final AllExpensesModel allExpensesModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? SelectedAllExpensesItem(allExpensesModel: allExpensesModel)
        : UnSelectedAllExpensesItem(allExpensesModel: allExpensesModel);
  }
}

class SelectedAllExpensesItem extends StatelessWidget {
  const SelectedAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: ColorHelper.mainLightBlueColor, width: 1.0),
          color: ColorHelper.mainLightBlueColor),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
              imagePath: allExpensesModel.imagePath,
              imageColor: Colors.white,
              imageBackgroundColor: Colors.white.withOpacity(0.1)),
          const SizedBox(height: 34.0),
          Text(
            allExpensesModel.title,
            style:
                StyleHelper.textStyle16SemiBold.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8.0),
          Text(
            allExpensesModel.data,
            style: StyleHelper.textStyle14Regular.copyWith(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            allExpensesModel.value,
            style:
                StyleHelper.textStyle24SemiBold.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class UnSelectedAllExpensesItem extends StatelessWidget {
  const UnSelectedAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: ColorHelper.containerF1GrayColor, width: 1.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imagePath: allExpensesModel.imagePath,
          ),
          const SizedBox(height: 34.0),
          Text(
            allExpensesModel.title,
            style: StyleHelper.textStyle16SemiBold,
          ),
          const SizedBox(height: 8.0),
          Text(
            allExpensesModel.data,
            style: StyleHelper.textStyle14Regular,
          ),
          const SizedBox(height: 16.0),
          Text(
            allExpensesModel.value,
            style: StyleHelper.textStyle24SemiBold,
          ),
        ],
      ),
    );
  }
}
