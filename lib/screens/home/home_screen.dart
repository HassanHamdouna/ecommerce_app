import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:ecommerce_app/screens/home/widget/list_view_category.dart';
import 'package:ecommerce_app/screens/home/widget/list_view_product.dart';
import 'package:ecommerce_app/screens/home/widget/search_text_field.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> names = <String>[
    'men',
    's',
    's',
    's',
    's',
    's',
    's',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            children: [
              const SearchTextField(),
              SizedBox(
                height: 30.h,
              ),
              const CustomText(
                title: "Categories",
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 100.h,
                child: const ListViewCategory(),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CustomText(
                    title: "Best Selling",
                    fontSize: 18,
                  ),
                  CustomText(
                    title: "See all",
                    fontSize: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 319.h,
                  child: const ListViewProduct()),
            ],
          ),
        ),
      ),
    );
  }



}
