import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';

class DotsPageIndicator extends StatelessWidget {
  const DotsPageIndicator({super.key, required this.selectedIndicator});

  final int selectedIndicator;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDotIndicator(isSelected: index == selectedIndicator),
        ),
      ),
    );
  }
}

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isSelected ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color: isSelected
            ? ColorHelper.mainLightBlueColor
            : const Color(0xFFE7E7E7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
