import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({
    super.key,
    required this.text,
    required this.image,
    required this.onTap,
  });

  final String text;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColorsLight.textColorGray),
          borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          child: Row(
            children: [
              const Spacer(),
              Image.asset(
                image,
                height: 20,
                width: 20,
              ),
              const Spacer(
                flex: 2,
              ),
              CustomText(
                title: text,
                fontSize: 18,
                alignment: AlignmentDirectional.center,
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
