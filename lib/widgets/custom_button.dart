import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style:
          ElevatedButton.styleFrom(minimumSize: Size(double.infinity.w, 50.h)),
      child: CustomText(
        title: text,
        fontSize: 14,
        alignment: AlignmentDirectional.center,
      ),
    );
  }
}
