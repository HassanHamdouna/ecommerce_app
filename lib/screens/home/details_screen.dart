import 'package:ecommerce_app/core/global/localization/app_strings.dart';
import 'package:ecommerce_app/core/global/theme/appColor/app_colors_dark.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isEnableStar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Image.asset(
                  "assets/images/image_product.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: 60,
                  left: 10,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ))),
              Positioned(
                  top: 60,
                  right: 20,
                  child: FloatingActionButton.small(
                      elevation: 2,
                      backgroundColor: Colors.grey.shade50,
                      onPressed: () {
                        setState(() {
                          isEnableStar = !isEnableStar;
                        });
                      },
                      child: Icon(
                        isEnableStar ? Icons.star : Icons.star_border,
                        color: isEnableStar ? Colors.yellow : Colors.black,
                      ))),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    const CustomText(
                      title: "Nike Dri-FIT Long Sleeve",
                      fontSize: 26,
                      alignment: AlignmentDirectional.topStart,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * .4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              CustomText(
                                title: 'Size',
                              ),
                              CustomText(
                                title: "sized",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * .44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const CustomText(
                                title: 'Color',
                              ),
                              Container(
                                width: 20,
                                height: 10,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellowAccent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    const CustomText(
                      title: 'Details',
                      fontSize: 18,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomText(
                      title:
                          "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.",
                      fontSize: 12,
                      height: 2.5,
                      alignment: AlignmentDirectional.centerStart,
                      maxLine: 6,
                    )
                  ],
                ),
              ),
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
                        onPressed: () {},
                        text: 'Add',
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
