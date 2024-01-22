import 'dart:io';

import 'package:flutter/material.dart';
import 'package:leap/features/auth/presentation/login_screen.dart';
import 'package:leap/view/screens/home_screen/home_screen.dart';
import 'package:leap/view/screens/home_screen_web/home_screen_web.dart';

class Routes {
  static const String login = "/login";
  static const String home = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        if(Platform.isWindows) {
          return MaterialPageRoute(builder: (_) => const HomeScreenWeb());

        }
        else{
          return MaterialPageRoute(builder: (_) => const HomeScreen());
        }
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

    }
    return unDefinedRoute();

  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold());
  }
}
