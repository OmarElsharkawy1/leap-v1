import 'dart:io';

import 'package:flutter/material.dart';
import 'package:leap/features/auth/presentation/forget%20password/change_password.dart';
import 'package:leap/features/auth/presentation/forget%20password/forget_password.dart';
import 'package:leap/features/auth/presentation/forget%20password/send_otp_code.dart';
import 'package:leap/features/auth/presentation/login_screen.dart';
import 'package:leap/features/auth/presentation/signup/sign_up.dart';
import 'package:leap/features/home/home_screen/main_screen.dart';
import 'package:leap/features/home/home_screen_web/home_screen_web.dart';

class Routes {
  static const String login = "/login";
  static const String home = "/home";
  static const String signUp = "/signUp";
  static const String forgetPassword = "/forgetPassword";
  static const String sendOTPCode = "/sendOTPCode";
  static const String changePassword = "/changePassword";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const HomeScreenWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const MainScreen());
        }
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case Routes.sendOTPCode:
        return MaterialPageRoute(builder: (_) => const SendOTPCode());
        case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePassword());
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
