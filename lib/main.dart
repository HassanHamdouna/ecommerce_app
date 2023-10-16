import 'package:ecommerce_app/core/global/theme/themeData/theme_data_dark.dart';
import 'package:ecommerce_app/core/global/theme/themeData/theme_data_light.dart';
import 'package:ecommerce_app/core/utils/context_extenssion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: getThemeDataDark(),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('ar'),
          ],
          locale: const Locale('en'),
          debugShowCheckedModeBanner: false,
          initialRoute: '/cart_screen',
          routes: context.routes,
        );
      },
    );
  }
}
