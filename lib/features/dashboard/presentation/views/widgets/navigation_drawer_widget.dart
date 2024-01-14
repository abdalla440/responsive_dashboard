import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_helper.dart';
import 'package:responsive_dashboard/features/dashboard/data/drawer_item_model.dart';
import 'package:responsive_dashboard/features/dashboard/data/user_model.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/drawer_item.dart';

import 'drawer_items_list_view.dart';
import 'user_list_tile.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserListTile(
            userModel: UserModel(
              name: 'Lekan Okeowo',
              email: 'demo@gmail.com',
              imagePath: AssetsHelper.avatar1,
            ),
          ),
        ),
        const DrawerItemsListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              InActiveDrawerTile(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system',
                      iconPath: AssetsHelper.iconsSettingIcon)),
              InActiveDrawerTile(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      iconPath: AssetsHelper.iconsLogoutIcon)),
              const SizedBox(
                height: 48.0,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
