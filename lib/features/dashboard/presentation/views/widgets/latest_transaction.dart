import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_helper.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/user_list_tile.dart';

import '../../../data/user_model.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  static List<UserModel> itemsList = [
    UserModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        imagePath: AssetsHelper.avatar2),
    UserModel(
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com',
        imagePath: AssetsHelper.avatar3),
    UserModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        imagePath: AssetsHelper.avatar4)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Latest Transaction',
          style: StyleHelper.textStyle16Medium,
        ),
        const SizedBox(
          height: 12.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: itemsList.map((e) => IntrinsicWidth(child: UserListTile(userModel: e))).toList(),
          ),
        )
      ],
    );
  }
}
