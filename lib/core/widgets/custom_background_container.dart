import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer(
      {super.key, this.paddingValue, required this.child});

  final double? paddingValue;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(paddingValue ?? 20.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
