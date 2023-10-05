import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.hint,
    required this.onSave,
    required this.validator,
    required this.keyboardType,
    this.controller,
  });

  final String text;
  final String hint;
  final Function(String?) onSave;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: text,
          fontSize: 14,
        ),
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          onSaved: onSave,
          decoration: InputDecoration(
            enabledBorder:
                buildUnderlineInputBorder(AppColorsLight.textColorGray),
            focusedBorder:
                buildUnderlineInputBorder(AppColorsLight.textColorGreen),
            hintText: hint,
          ),
        )
      ],
    );
  }

  UnderlineInputBorder buildUnderlineInputBorder(final Color color) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color),
    );
  }
}
