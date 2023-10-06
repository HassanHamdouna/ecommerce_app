import 'package:ecommerce_app/screens/auth/login_screen.dart';
import 'package:ecommerce_app/screens/auth/register_screen.dart';
import 'package:ecommerce_app/screens/core/launch_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';


extension ContextHelper on BuildContext {

  Map<String, WidgetBuilder> get routes => {
    '/splash_screen': (context) => const LaunchScreen(),
    '/login_screen': (context, {arguments}) => const LoginScreen(),
    '/register_screen': (context, {arguments}) => const RegisterScreen(),
    '/home_screen': (context, {arguments}) =>  HomeScreen(),
  };

  AppLocalizations get localizations {
    return AppLocalizations.of(this)!;
  }


}
