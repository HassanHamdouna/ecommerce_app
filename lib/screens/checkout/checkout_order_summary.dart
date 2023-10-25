import 'package:ecommerce_app/core/global/theme/appColor/app_colors_dark.dart';
import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutOrderSummary extends StatefulWidget {
  const CheckoutOrderSummary({super.key});

  @override
  State<CheckoutOrderSummary> createState() => _CheckoutOrderSummaryState();
}

class _CheckoutOrderSummaryState extends State<CheckoutOrderSummary> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Summary"),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.h,vertical: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisExtent: 150),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        width: 120.w,
                        height: 120.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.shade100,
                        ),
                        child: SizedBox(
                            height: 240,
                            width: MediaQuery.of(context).size.width * .4,
                            child: Image.asset(
                              "assets/images/image_product.png",
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 100.w,
                        child: const CustomText(
                          title: 'Tag Heuer ',
                          maxLine: 1,
                          alignment: AlignmentDirectional.centerStart,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const CustomText(
                        title: "\$1100",
                        colorText: AppColorsLight.textColorGreen,
                        alignment: AlignmentDirectional.centerStart,
                        fontSize: 16,
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(
              height: 30,
              color: AppColorsLight.appColorWithe,
              thickness: 1,
            ),
            const CustomText(title: "Shipping Address", fontSize: 18),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 300.w,
                        child: const CustomText(
                            title:
                                "21, Alex Davidson Avenue, Opposite Omegatron, Vicent Smith Quarters, Victoria Island, Lagos, Nigeria",
                            fontSize: 14,
                            height: 1.5,
                            maxLine: 3),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Transform.scale(
                    scale: 1.5, // Adjust the scale factor as needed to make it larger
                    child: Checkbox(
                      checkColor: Colors.white,
                      activeColor: AppColorsDark.textColorGreen,
                      value: isChecked,
                      visualDensity: VisualDensity(horizontal: 4.0, vertical: 4.0), // Adjust the values as needed
                      shape: const CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            const CustomText(
                title: "Change",
                fontSize: 12,
                colorText: AppColorsDark.textColorLightGreen,
                maxLine: 3),
            const Divider(
              height: 30,
              color: AppColorsLight.appColorWithe,
              thickness: 1,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColorsDark.transparent,
                      elevation: 0,
                      minimumSize: Size(150.w, 50.h),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: AppColorsDark.textColorGreen, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: const CustomText(
                    title: 'BACK',
                    fontSize: 14,
                    alignment: AlignmentDirectional.center,
                  ),
                ),
                CustomButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/'),
                  text: 'Deliver',
                  sizeWight: 150,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),

          ],
        ),
      ),
    );
  }
}
