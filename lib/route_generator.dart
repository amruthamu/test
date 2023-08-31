import 'package:flutter/material.dart';
import 'package:route_task/route_generator.dart';
import 'package:route_task/secondpage.dart';

import 'firstpage.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (ctx) => FirstPage());
      case '/second':
      // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (ctx) => SecondPage(
              data: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}