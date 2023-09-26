import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/text_widget.dart';
import 'package:food_delivery/cores/constants/font_size.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class ActionChipButton extends ConsumerWidget {
  const ActionChipButton(this.text, this.onPressed, {super.key});
  final String? text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return ActionChip(
      padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(12)),
      onPressed: () {},
      backgroundColor: theme.textfieldColor,
      label: TextWidget(
        text!,
        fontSize: sp(kfsMedium),
        fontWeight: FontWeight.w500,
        textColor: theme.mainTextColor,
      ),
    );
  }
}
