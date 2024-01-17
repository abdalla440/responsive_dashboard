import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/custom_input_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.title, required this.hintText});

  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: StyleHelper.textStyle16Medium(context),),
        const SizedBox(
          height: 12.0,
        ),
        CustomInputField(hintText: hintText)
      ],
    );
  }
}
