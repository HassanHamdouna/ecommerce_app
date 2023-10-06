import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/core/utils/context_extenssion.dart';
import 'package:ecommerce_app/screens/auth/widget/custom_test_form_field.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColorsLight.textColorGray,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        children: [
          SizedBox(
            height: 30.h,
          ),
          Card(
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: context.localizations.signUp,
                    fontSize: 30,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.name,
                    text: context.localizations.name,
                    hint: 'David Spade',
                    onSave: (value) {},
                    validator: (value) {
                      if (value == null) {
                      }
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    text: context.localizations.email,
                    hint: 'iamdavid@gmail.com',
                    onSave: (value) {
                      // controller.email = value;
                    },
                    validator: (value) {
                      if (value == null) {
                      }
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    text: context.localizations.password,
                    hint: '**********',
                    onSave: (value) {
                      // controller.password = value;
                    },
                    validator: (value) {
                      if (value == null) {
                      }
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    text: context.localizations.signUp.toUpperCase(),
                    onPressed: () {

                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
