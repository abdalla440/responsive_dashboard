import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';

abstract class StyleHelper {
  static TextStyle textStyle12Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: ColorHelper.textDarkGrayColor,
    );
  }

  static TextStyle textStyle14Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: ColorHelper.textDarkGrayColor,
    );
  }

  static TextStyle textStyle16Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: ColorHelper.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle16Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: ColorHelper.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle16SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle18SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainLightBlueColor,
    );
  }

  static TextStyle textStyle16Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: ColorHelper.mainLightBlueColor,
    );
  }

  static TextStyle textStyle20Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  static TextStyle textStyle20SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainDarkBlueColor,
    );
  }

  static TextStyle textStyle24SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainLightBlueColor,
    );
  }

}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = calculateScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  return responsiveSize.clamp(fontSize * 0.8, fontSize * 1.2);
}

double calculateScaleFactor(BuildContext context) {
  double layoutWidth = MediaQuery.sizeOf(context).width;
  if (layoutWidth < SizeConfig.tabletBreakPoint) {
    return layoutWidth / 550;
  } else if (layoutWidth < SizeConfig.desktopBreakPoint) {
    return layoutWidth / 1000;
  } else {
    return layoutWidth / 2500;
  }
}
