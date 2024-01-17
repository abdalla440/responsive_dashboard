import 'dart:math';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.imagePath,
      this.imageColor,
      this.imageBackgroundColor});

  final String imagePath;
  final Color? imageColor, imageBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(

            constraints: const BoxConstraints(maxWidth: 60.0),
            child: AspectRatio(

              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: imageBackgroundColor ?? ColorHelper.containerFAGrayColor,
                    shape: BoxShape.circle),
                child: Center(
                  child: SvgPicture.asset(
                    imagePath,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? ColorHelper.mainLightBlueColor,
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: pi,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imageColor != null
                ? Colors.white
                : ColorHelper.mainDarkBlueColor,
          ),
        ),
      ],
    );
  }
}
