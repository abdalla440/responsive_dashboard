import 'dart:developer';

import 'package:flutter/material.dart';

class LazyLayoutBuilder extends StatelessWidget {
  const LazyLayoutBuilder(
      {super.key,
      required this.mobileLayoutView,
      required this.tabletLayoutView,
      required this.desktopLayoutView});

  final WidgetBuilder mobileLayoutView, tabletLayoutView, desktopLayoutView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return mobileLayoutView(context);
        } else if (constraints.maxWidth < 1250) {
          return tabletLayoutView(context);
        } else {
          return desktopLayoutView(context);
        }
      },
    );
  }
}
