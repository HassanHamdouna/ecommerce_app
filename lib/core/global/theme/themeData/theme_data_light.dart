import 'package:ecommerce_app/core/global/theme/appColor/app_colors_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeDataLight() => ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColorsLight.primaryColor,
      primaryColorLight: AppColorsLight.primaryColor,
      primaryColorDark: AppColorsLight.primaryColor,
      canvasColor: AppColorsLight.primaryColor,
      scaffoldBackgroundColor: AppColorsLight.backgroundColor,
      bottomAppBarColor: AppColorsLight.primaryColor,
      cardColor: AppColorsLight.caredColor,
      dividerColor: AppColorsLight.primaryColor,
      focusColor: AppColorsLight.primaryColor,
      hoverColor: AppColorsLight.primaryColor,
      errorColor: AppColorsLight.primaryColor,
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColorsLight.primaryColor)),
        fillColor: AppColorsLight.transparent,
        hintStyle: TextStyle(
            fontFamily: "RedHatDisplay", color: AppColorsLight.textColorBlack),
        filled: true,
        labelStyle: TextStyle(color: AppColorsLight.primaryColor),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColorsLight.primaryColor,
        selectionColor: AppColorsLight.primaryColor,
        selectionHandleColor: AppColorsLight.primaryColor,
      ),
      appBarTheme: const AppBarTheme(
        color: AppColorsLight.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColorsLight.textColorBlack),
        titleTextStyle: TextStyle(
          color: AppColorsLight.textColorBlack,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: "RedHatDisplay",
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: AppColorsLight.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      iconTheme: const IconThemeData(color: AppColorsLight.primaryColor),
      primaryTextTheme: const TextTheme(
        headline6:
            TextStyle(fontSize: 20.0, color: AppColorsLight.primaryColor),
      ),
      accentTextTheme: const TextTheme(
        bodyText2:
            TextStyle(fontSize: 16.0, color: AppColorsLight.primaryColor),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: AppColorsLight.primaryColor,
        contentTextStyle: TextStyle(color: AppColorsLight.primaryColor),
        elevation: 4.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColorsLight.appColorWithe,
          backgroundColor: AppColorsLight.primaryColor,
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColorsLight.appColorWithe,
              fontFamily: "RedHatDisplay"),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: AppColorsLight.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          side: const BorderSide(color: AppColorsLight.primaryColor),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: AppColorsLight.primaryColor,
        titleTextStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        contentTextStyle: TextStyle(fontSize: 16.0),
      ),
      scrollbarTheme: ScrollbarThemeData(
        isAlwaysShown: false,
        thickness: MaterialStateProperty.all(6.0),
        radius: const Radius.circular(3.0),
        showTrackOnHover: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColorsLight.primaryColor,
        selectedItemColor: AppColorsLight.primaryColor,
        unselectedItemColor: AppColorsLight.primaryColor,
        selectedLabelStyle:
            TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 14.0),
      ),
      navigationRailTheme: const NavigationRailThemeData(
        backgroundColor: AppColorsLight.primaryColor,
        unselectedLabelTextStyle:
            TextStyle(fontSize: 14.0, color: AppColorsLight.primaryColor),
        selectedLabelTextStyle: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: AppColorsLight.primaryColor),
        selectedIconTheme: IconThemeData(color: AppColorsLight.primaryColor),
        unselectedIconTheme: IconThemeData(color: AppColorsLight.primaryColor),
        elevation: 4.0,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: AppColorsLight.primaryColor,
          backgroundColor: AppColorsLight.transparent,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
