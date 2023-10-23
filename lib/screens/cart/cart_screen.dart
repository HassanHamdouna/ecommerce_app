import 'package:ecommerce_app/core/global/theme/appColor/app_colors_dark.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
              itemCount: 2,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10.h,
                );
              },
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/image_product.png',
                      height: 120.h,
                      width: 120.w,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        const CustomText(
                          title: "Tag Heuer Wristwatch ",
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        const CustomText(
                          title: "\$ 1100",
                          colorText: AppColorsDark.textColorGreen,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: 90.w,
                          height: 30.h,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Colors.grey),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const CustomText(
                                  title: "+",
                                ),
                                onTap: () {},
                              ),
                              const CustomText(title: "3"),
                              InkWell(
                                child: const CustomText(
                                  title: "-",
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Card(
            margin: EdgeInsets.zero,
            elevation: 4,
            child: SizedBox(
              width: 375.w,
              height: 84.h,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CustomText(
                          title: "PRICE ",
                          fontSize: 14,
                          colorText: Colors.grey,
                        ),
                        CustomText(
                          title: ' \$6455',
                          colorText: AppColorsDark.textColorGreen,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 180,
                      height: 120,
                      child: CustomButton(
                        onPressed: () => Navigator.pushNamed(context, '/checkout_delivery'),
                        text: 'CHECKOUT',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
