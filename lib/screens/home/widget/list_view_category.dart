import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewCategory extends StatelessWidget {
  const ListViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade100,
              ),
              height: 60,
              width: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/image_category.png"),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomText(
              title: 'Men',
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        width: 20.w,
      ),
    );
  }
}
