import 'package:ecommerce_app/core/utils/context_extenssion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        child: Text(context.localizations.email,style: GoogleFonts.aBeeZee(
          fontSize: 44,
        )),
      ),
      
    );
  }
}
