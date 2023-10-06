import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.colorText,
    this.fontSize = 12,
    this.alignment = AlignmentDirectional.centerStart,
    this.maxLine = 1,
    this.height = 1,
  });

  final String title;
  final Color? colorText;
  final int fontSize;
  final AlignmentDirectional alignment;
  final int maxLine;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "RedHatDisplay",
          fontSize: fontSize.sp,
          color: colorText,
          height: height,
        ),
        maxLines: maxLine,
      ),
    );
  }
}
