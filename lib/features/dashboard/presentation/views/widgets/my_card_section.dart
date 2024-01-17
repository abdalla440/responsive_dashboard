import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

import 'dots_page_indicator.dart';
import 'payment_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int selectedPage = 0;
  @override
  void initState() {

    pageController = PageController();
    pageController.addListener(() {
      selectedPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text('My Card',style: StyleHelper.textStyle20SemiBold(context),),
        const SizedBox(height: 20.0,),
        PaymentCardsPageView(pageController:pageController),
        const SizedBox(height: 20.0,),
         DotsPageIndicator(
          selectedIndicator: selectedPage,
        )
      ],
    );
  }
}
