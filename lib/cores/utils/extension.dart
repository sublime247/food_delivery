import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  Widget get sH => SizedBox(
        height: h,
      );

  Widget get sW => SizedBox(
        width: w,
      );
}
