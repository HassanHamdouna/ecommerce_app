import 'package:ecommerce_app/core/global/theme/appColor/app_colors_dark.dart';
import 'package:ecommerce_app/core/utils/context_extenssion.dart';
import 'package:ecommerce_app/screens/auth/widget/custom_test_form_field.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutAddress extends StatefulWidget {
  const CheckoutAddress({super.key});

  @override
  State<CheckoutAddress> createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends State<CheckoutAddress> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        children: [
        Row(
          children: [
            Checkbox(
            checkColor: Colors.white,
            activeColor: AppColorsDark.textColorGreen,
            // fillColor: MaterialStateProperty.resolveWith((states) {
            //   isChecked ? Colors.grey :Colors.grey;
            // }),
            value: isChecked,
            shape: const CircleBorder(),
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
      ),
            const CustomText(title: "Billing address is the same as delivery address",fontSize: 14),
          ],
        ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            text: "Street 1",
            hint: '21, Alex Davidson Avenue',
            onSave: (value) {
              // controller.email = value;
            },
            validator: (value) {
              if (value == null) {
              }
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            text: "Street 2",
            hint: 'Opposite Omegatron, Vicent Quarters',
            onSave: (value) {
              // controller.email = value;
            },
            validator: (value) {
              if (value == null) {
              }
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            text: "City",
            hint: 'Victoria Island',
            onSave: (value) {
              // controller.email = value;
            },
            validator: (value) {
              if (value == null) {
              }
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  text: "State",
                  hint: 'Lagos State',
                  onSave: (value) {
                    // controller.email = value;
                  },
                  validator: (value) {
                    if (value == null) {
                    }
                  },
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  text: "Country",
                  hint: 'Nigeria',
                  onSave: (value) {
                    // controller.email = value;
                  },
                  validator: (value) {
                    if (value == null) {
                    }
                  },
                ),
              ),

            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColorsDark.transparent,
                elevation: 0,
                minimumSize: Size(150.w, 50.h), shape: RoundedRectangleBorder(
              side:  const BorderSide(
                  color: AppColorsDark.textColorGreen,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(5),
            )),
            child:  const CustomText(
              title: 'BACK',
              fontSize: 14,
              alignment: AlignmentDirectional.center,
            ),
          ),
              CustomButton(
                onPressed: () => Navigator.pushNamed(context, '/checkout_order_summary'),
                text: 'NEXT',
                sizeWight: 150,
              ),

            ],
          ),



        ],
      ),
    );
  }
}
