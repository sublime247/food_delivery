import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/button.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/cores/theme/app_colors.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/home/presentation/widget/banner_data.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h(150),
      width: w(350),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
          color: AppColor.primayColor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            // flex: 1,
            // fit: FlexFit.tight,
            child: SizedBox(
              // width: w(200),/
              child: Stack(
                children: [
                  Image.asset(ImageAssets.iceCream2),
                  Image.asset(ImageAssets.iceCream),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: const EdgeInsets.only(right: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            BannerText.InfoText,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          vSpace(5),
                       MidButton(onTap: (){},
                       text: 'Buy Now',
                       )
                         
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
