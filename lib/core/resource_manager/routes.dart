import 'dart:io';

import 'package:flutter/material.dart';
import 'package:leap/features/auth/presentation/forget%20password/change_password.dart';
import 'package:leap/features/auth/presentation/forget%20password/forget_password.dart';
import 'package:leap/features/auth/presentation/forget%20password/send_otp_code.dart';
import 'package:leap/features/auth/presentation/login_screen.dart';
import 'package:leap/features/auth/presentation/signup/sign_up.dart';
import 'package:leap/features/auth_web/presentation/login_screen_web.dart';
import 'package:leap/features/auth_web/presentation/signup_web/sign_up_web.dart';
import 'package:leap/features/main_screen.dart';
import 'package:leap/features/home_screen_web/presentation/home_screen_web.dart';
import 'package:leap/features/profile/presentation/profile_screen.dart';

class Routes {
  static const String login = "/login";
  static const String home = "/home";
  static const String signUp = "/signUp";
  static const String forgetPassword = "/forgetPassword";
  static const String sendOTPCode = "/sendOTPCode";
  static const String changePassword = "/changePassword";
  static const String profile = "/profile";
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
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const LoginScreenWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const LoginScreen());
        }
      case Routes.signUp:
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const SignUpScreenWeb());
        } else {
          return PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const SignUpScreen(),
              transitionsBuilder: customAnimate);
        }
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case Routes.sendOTPCode:
        return MaterialPageRoute(builder: (_) => const SendOTPCode());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePassword());
      case Routes.profile:
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const ProfileScreen(),
            transitionsBuilder: customAnimate);
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

Widget customAnimate(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  // var begin = Offset(1.0, 0.0);
  // var end = Offset.zero;
  // var curve = Curves.decelerate;
  //
  // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}
