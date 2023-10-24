import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
     this.sizeWight = double.infinity ,
  });

  final String text;
  final Function()? onPressed;
  final double sizeWight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(minimumSize: Size(sizeWight.w, 50.h),),
      child: CustomText(
        title: text,
        fontSize: 14,
        alignment: AlignmentDirectional.center,
      ),
    );
  }
}
