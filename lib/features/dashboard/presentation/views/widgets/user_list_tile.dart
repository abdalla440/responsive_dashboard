import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/assets_helper.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

import '../../../data/user_model.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({super.key, required this.userModel});

  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorHelper.containerFAGrayColor,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12.0),
        leading: SvgPicture.asset(userModel.imagePath),
        title: Text(
          userModel.name,
          style: StyleHelper.textStyle16SemiBold,
        ),
        subtitle: Text(
          userModel.email,
          style: StyleHelper.textStyle12Regular,
        ),
      ),
    );
  }
}
