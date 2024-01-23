import 'dart:io';

import 'package:flutter/material.dart';
import 'package:leap/features/auth/presentation/login_screen.dart';
import 'package:leap/features/auth/presentation/signup/sign_up.dart';
import 'package:leap/features/auth_web/presentation/login_screen_web.dart';
import 'package:leap/features/auth_web/presentation/signup_web/sign_up_web.dart';
import 'package:leap/features/home_screen_web/home_screen_web.dart';

class Routes {
  static const String login = "/login";
  static const String home = "/home";
  static const String signUp = "/signUp";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        if (Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const HomeScreenWeb());
        } else {
          return MaterialPageRoute(builder: (_) => const HomeScreenWeb());
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
          return MaterialPageRoute(builder: (_) => const SignUpScreen());
        }
    }
    return unDefinedRoute();
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
