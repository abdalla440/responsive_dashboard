// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/core/widgets/custom_text_button.dart';

import 'income_chart_section.dart';
import 'income_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const IncomeHeader(),
          const SizedBox(height: 16.0),
          IncomeChartSection(),
          Divider(
            height: 28 * 2,
            color: ColorHelper.textDarkGrayColor.withOpacity(0.2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomTextButton(
                              text: 'See detail',
                              backgroundColor: Colors.transparent,
                              textColor: ColorHelper.mainLightBlueColor,
                            ),
            ],
          )
        ],
      ),
    );
  }
}
