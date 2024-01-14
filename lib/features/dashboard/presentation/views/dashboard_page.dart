import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/lazy_layout_builder.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/layouts/desktop_layout_view.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/layouts/mobile_layout_view.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/layouts/tablet_layout_view.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LazyLayoutBuilder(
        mobileLayoutView: (context) => const MobileLayoutView(),
        tabletLayoutView: (context) => const TabletLayoutView(),
        desktopLayoutView: (context) => const DesktopLayoutView());
  }
}
