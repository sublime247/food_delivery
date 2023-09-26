import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

extension SizedBoxExtension on num {
  Widget get sH => SizedBox(
        height: h,
      );

  Widget get sW => SizedBox(
        width: w,
      );
}

extension SvgExtension on String {
  /// SVG with color
  SvgPicture get svg => SvgPicture.asset(
        this,
        fit: BoxFit.scaleDown,
      );
}
