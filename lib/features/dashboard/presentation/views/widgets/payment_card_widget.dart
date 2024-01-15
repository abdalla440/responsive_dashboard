import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/assets_helper.dart';
import 'package:responsive_dashboard/core/utils/color_helper.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: AspectRatio(
        aspectRatio: 420 / 215,
        child: Container(
          decoration: BoxDecoration(
            color: color ?? ColorHelper.mainLightBlueColor,
            borderRadius: BorderRadius.circular(12.0),
            image: const DecorationImage(
              image: AssetImage(
                AssetsHelper.imagesCardImage,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 31, top: 20, right: 45),
                title: Text(
                  'Name card',
                  style: StyleHelper.textStyle16Regular
                      .copyWith(color: Colors.white),
                ),
                subtitle: const Text(
                  'Syah Bandi',
                  style: StyleHelper.textStyle20Medium,
                ),
                trailing: SvgPicture.asset(AssetsHelper.iconsGalleryIcon),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 27, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: StyleHelper.textStyle24SemiBold
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      '12/20 - 124',
                      style: StyleHelper.textStyle16Regular
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
