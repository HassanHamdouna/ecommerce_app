import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/core/utils/context_extenssion.dart';
import 'package:ecommerce_app/screens/auth/widget/custom_button_social.dart';
import 'package:ecommerce_app/screens/auth/widget/custom_test_form_field.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: context.localizations.welcome, // Updated
                        fontSize: 30,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/register_screen'),
                        child: CustomText(
                          title: context.localizations.signUp, // Updated
                          colorText: AppColorsLight.textColorGreen,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomText(
                    title: context.localizations.signInToContinue, // Updated
                    fontSize: 14,
                  ),
                  SizedBox(
                    height: 30.h,
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
                    height: 20.h,
                  ),
                  CustomText(
                    title: context.localizations.forgotPassword, // Updated
                    fontSize: 14,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    text: context.localizations.signIN.toUpperCase(), // Updated
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomText(
            title: '- ${context.localizations.or} -',
            fontSize: 20,
            alignment: AlignmentDirectional.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButtonSocial(text: context.localizations.signInWithFacebook, image: 'assets/images/facebook.png',),
          SizedBox(
            height: 20.h,
          ),
          CustomButtonSocial(text: context.localizations.signInWithGoogle, image: 'assets/images/google.png',),
        ],
      ),
    );
  }
}
