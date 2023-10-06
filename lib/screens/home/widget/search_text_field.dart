import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        style: const TextStyle(fontSize: 14.0, color: Colors.black),
        keyboardType: TextInputType.text,
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder:const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          filled: true,
          hintStyle: const TextStyle(
              fontFamily: "RedHatDisplay",
              color: Colors.black54),
          hintText: "Search",
          labelStyle: const TextStyle(color: Colors.black54),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
      ),
    );

  }
}
