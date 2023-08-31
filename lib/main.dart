import 'package:flutter/material.dart';
import 'package:route_task/route_generator.dart';
import 'package:route_task/secondpage.dart';

import 'firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
     // home: FirstPage(),
      routes: {'secondPage': (ctx) {
        return SecondPage(data: "ammu");
      }

    },
    );
  }
}


