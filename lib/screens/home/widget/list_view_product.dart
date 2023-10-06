import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/details_screen');
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .4,
            child: Column(
              children: [
                Container(
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
                const CustomText(
                  title: 'BeoPlay Speaker',
                  alignment: AlignmentDirectional.centerStart,
                  fontSize: 16,
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Expanded(
                  child: CustomText(
                    title: 'Bang and Olufsen',
                    colorText: AppColorsLight.textColorGray,
                    alignment: AlignmentDirectional.centerStart,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomText(
                  title: "\$755",
                  colorText: AppColorsLight.textColorGreen,
                  alignment: AlignmentDirectional.centerStart,
                  fontSize: 16,
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        width: 20.w,
      ),
    );
  }
}
