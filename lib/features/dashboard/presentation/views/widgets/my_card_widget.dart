import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';

import 'my_card_section.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      paddingValue: 24.0,
      child: MyCardSection(),
    );
  }
}
