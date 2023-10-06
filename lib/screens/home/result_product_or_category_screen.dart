import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultProductOrCategoryScreen extends StatelessWidget {
  const ResultProductOrCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Men'),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 360),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey.shade100,
                    ),
                    child: SizedBox(
                        height: 240,
                        width: 164,
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
                  const Expanded(
                    child: CustomText(
                      title: 'Bang and Olufsen',
                      colorText: AppColorsLight.textColorGray,
                      alignment: AlignmentDirectional.centerStart,
                    ),
                  ),
                  const CustomText(
                    title: "\$755",
                    colorText: AppColorsLight.textColorGreen,
                    alignment: AlignmentDirectional.centerStart,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
