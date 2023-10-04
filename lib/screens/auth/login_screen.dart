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
                      const CustomText(
                        title: "Welcome,",
                        // colorText: AppColorsLight.textColorBlack,
                        fontSize: 30,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/register_screen'),
                        child: const CustomText(
                          title: "Sign Up",
                          colorText: AppColorsLight.textColorGreen,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomText(
                    title: "Sign in to Continue",
                    // colorText: AppColorsLight.textColorGray,
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
                        print("ERROR");
                      }
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  CustomTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    text: 'Password',
                    hint: '**********',
                    onSave: (value) {
                      // controller.password = value;
                    },
                    validator: (value) {
                      if (value == null) {
                        print('error');
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const CustomText(
                    title: 'Forgot Password ?',
                    fontSize: 14,
                    alignment: AlignmentDirectional.centerEnd,
                    // colorText: Colors.black,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    text: 'SIGN IN'.toUpperCase(),
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
          const CustomText(
              title: '- OR -',
              fontSize: 20,
              // colorText: Colors.black,
              alignment: AlignmentDirectional.center),
          SizedBox(
            height: 20.h,
          ),
          const  CustomButtonSocial(text: 'Sing in With Facebook',image: 'assets/images/facebook.png',),
          SizedBox(
            height: 20.h,
          ),
          const  CustomButtonSocial(text: 'Sing in With Google',image: 'assets/images/google.png',),
        ],
      ),
    );
  }
}
