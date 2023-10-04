import 'package:ecommerce_app/core/utils/context_extenssion.dart';
import 'package:ecommerce_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '/login_screen');
    },);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/ImageLaunch.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 80.h,
            left: 100.w,
            right: 90.w,
            child: const CustomText(title: ' S C A N N I N G ',fontSize: 24),
          )
        ],
      ),
      
    );
  }
}

