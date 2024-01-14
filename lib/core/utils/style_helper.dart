import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';

abstract class StyleHelper {
  static const TextStyle textStyle12Regular = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorHelper.textDarkGrayColor);
  static const TextStyle textStyle14Regular = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorHelper.textDarkGrayColor);
  static const TextStyle textStyle16Regular = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ColorHelper.mainDarkBlueColor);
  static const TextStyle textStyle16Medium = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorHelper.mainDarkBlueColor);
  static const TextStyle textStyle16SemiBold = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainDarkBlueColor);
  static const TextStyle textStyle18SemiBold = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainLightBlueColor);
  static const TextStyle textStyle16Bold = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorHelper.mainLightBlueColor);
  static const TextStyle textStyle20Medium = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
  static const TextStyle textStyle20SemiBold = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainDarkBlueColor);
  static const TextStyle textStyle24SemiBold = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: ColorHelper.mainLightBlueColor);

}
