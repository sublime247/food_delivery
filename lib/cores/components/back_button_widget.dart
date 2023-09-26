import 'package:flutter/cupertino.dart';
import 'package:food_delivery/cores/constants/constants.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: backButtonBgColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(kfsMedium),
        ),
        child: const Center(
          child: Icon(
            CupertinoIcons.back,
            color: backButtonBgColor,
          ),
        ),
      ),
    );
  }
}
