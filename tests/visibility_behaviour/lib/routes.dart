import 'package:flutter/material.dart';
import 'package:flutter_project_template/features/counter/view/counter_page.dart';
import 'features/home/view/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/counterPage': (context) => CounterPage(),
};
