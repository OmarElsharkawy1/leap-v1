import 'package:flutter/material.dart';
import 'package:leap/view/screens/home_screen/home_screen.dart';
import 'package:leap/view/constants/route.dart';

class AppRouterNavigation {
  Route? routerNavigation(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      // we will add here second route screen etc.
      /*
      case "anotherRoute":
        return MaterialPageRoute(builder: (_) => AnotherPage());
      */
      default:
        return null;
    }
  }
}
