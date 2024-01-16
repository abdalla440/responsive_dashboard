import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/widgets/lazy_layout_builder.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/layouts/desktop_layout_view.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/layouts/mobile_layout_view.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/layouts/tablet_layout_view.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/mobile_body_view.dart';

import '../../../../core/utils/size_config.dart';
import 'widgets/navigation_drawer_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width<SizeConfig.tabletBreakPoint? AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
              setState(() {

              });
            },
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.white,
            )),
      ):null,
      drawer: const NavigationDrawerWidget(),
      backgroundColor: const Color(0xffF7F9FA),
      body: LazyLayoutBuilder(
          mobileLayoutView: (context) => const MobileBodyView(),
          tabletLayoutView: (context) => const TabletLayoutView(),
          desktopLayoutView: (context) => const DesktopLayoutView()),
    );
  }
}
