
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';
import 'package:responsive_dashboard/features/dashboard/data/drawer_item_model.dart';


class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerTile(drawerItemModel: drawerItemModel)
        : InActiveDrawerTile(drawerItemModel: drawerItemModel);
  }
}

class InActiveDrawerTile extends StatelessWidget {
  const InActiveDrawerTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.iconPath),
      title: Text(
        drawerItemModel.title,
        style: StyleHelper.textStyle16Regular(context),
      ),
    );
  }
}

class ActiveDrawerTile extends StatelessWidget {
  const ActiveDrawerTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.iconPath),
      title: Text(
        drawerItemModel.title,
        style: StyleHelper.textStyle16Bold(context),
      ),
      trailing: Container(
        color: ColorHelper.mainLightBlueColor,
        width: 3.27,
      ),
    );
  }
}
