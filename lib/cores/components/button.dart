import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/theme/app_colors.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.text,
    this.child,
    required this.onTap,
  });
  final String? text;
  final Widget? child;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(160),
      height: h(50),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.99, -0.15),
          end: Alignment(-0.99, 0.15),
          colors: [Color(0xFF14BE77), Color(0xFF53E78B)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(sr(15)),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: child ?? Text(text ?? ''),
      ),
    );
  }
}

//small Button

class MidButton extends StatelessWidget {
  const MidButton({super.key, this.text,
    this.child,
    required this.onTap,});
  final String? text;
  final Widget? child;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82,
      height: 32,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        shadows:const  [
          BoxShadow(
            color: Color(0x21000000),
            blurRadius: 20,
            offset: Offset(6, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child:  ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: child ?? TextWidget(text ?? '', textColor: AppColor.primayColor, fontSize: sp(12), fontWeight: FontWeight.bold,),
      ),
    );
  }
}
