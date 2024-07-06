import 'package:flutter/material.dart';
import 'package:hello_world_flutter/pages/home_page.dart';
import 'package:hello_world_flutter/pages/second_page.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const MyHomePage(),
    '/second': (context) => const SecondPage(),
  };
}
