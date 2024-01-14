import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_helper.dart';
import '../../../data/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  List<DrawerItemModel> itemsList = [
    DrawerItemModel(
        title: 'Dashboard', iconPath: AssetsHelper.iconsDashboardIcon),
    DrawerItemModel(
        title: 'My Transaction', iconPath: AssetsHelper.iconsTransactionIcon),
    DrawerItemModel(
        title: 'Statistics', iconPath: AssetsHelper.iconsStatisticsIcon),
    DrawerItemModel(
        title: 'Wallet Account', iconPath: AssetsHelper.iconsWalletIcon),
    DrawerItemModel(
        title: 'My Investments', iconPath: AssetsHelper.iconsInvestmentsIcon),
  ];

  int activeTileIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeTileIndex != index) {
            setState(() {
              activeTileIndex = index;
            });
          }
        },
        child: DrawerItem(
          isActive: activeTileIndex == index,
          drawerItemModel: itemsList[index],
        ),
      ),
    );
  }
}
