import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/app_colors.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/home/presentation/widget/banner_data.dart';

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h(150),
      width: w(325),
      decoration: const BoxDecoration(
          color: AppColor.primayColor,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        children: [
          Image.asset(''),
          Column(children: [
            Text(BannerText.InfoText),
            ElevatedButton(onPressed: () {}, child: const Text('Buy Now'))
          ])
        ],
      ),
    );
  }
}
