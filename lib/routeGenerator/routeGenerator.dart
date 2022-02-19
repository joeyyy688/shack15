// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/pages/homePage.dart';
import 'package:shack15/routeGenerator/routeErrorPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        _errorRoute();
        break;
    }
    return _errorRoute();
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) => const RouteErrorPage());
  }
}
