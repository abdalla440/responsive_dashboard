import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';

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
        if (constraints.maxWidth < SizeConfig.tabletBreakPoint) {
          return mobileLayoutView(context);
        } else if (constraints.maxWidth < SizeConfig.desktopBreakPoint) {
          return tabletLayoutView(context);
        } else {
          return desktopLayoutView(context);
        }
      },
    );
  }
}
