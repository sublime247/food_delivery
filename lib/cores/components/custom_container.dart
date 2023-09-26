import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

@immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.child,
    this.padding,
    required this.onTap,
    this.height,
  });
  final theme = Theme.of(navigationKey.currentContext!).extension<Palette>();

  final Widget child;
  final double? padding;
  final double? height;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeModeSelector.mode,
      builder: (context, val, _) {
        return SizedBox(
          height: height ?? h(70),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: theme!.borderColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(h(kfsSuperLarge)),
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: padding ?? 0,
              ),
              elevation: 0,
              shadowColor: Colors.transparent,
              backgroundColor: theme?.tileColor,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
