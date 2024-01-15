import 'package:flutter/material.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:responsive_dashboard/features/dashboard/presentation/views/widgets/payment_card_widget.dart';

class PaymentCardsPageView extends StatelessWidget {
  const PaymentCardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: const [
        PaymentCardWidget(),
        PaymentCardWidget(
          color: Colors.amber,
        ),
        PaymentCardWidget(
          color: Colors.green,
        ),
      ],
    );
  }
}
