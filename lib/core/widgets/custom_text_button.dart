import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

class CustomTextButton extends StatelessWidget {

  final String text;
  final Color? backgroundColor,textColor;
  final double? height;

  const CustomTextButton({super.key, required this.text, this.backgroundColor, this.textColor, this.height});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height?? 62,
      child: ElevatedButton(

        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor?? ColorHelper.mainLightBlueColor,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))
        ),
        child: Text(
          text,
          style: StyleHelper.textStyle18SemiBold.copyWith(
            color: textColor?? Colors.white
          ),
        ),
      ),
    );
  }
}
