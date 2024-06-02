import 'package:flutter/material.dart';
import 'package:flutter_project_template/features/feature1/view/feature1_page.dart';
import 'features/home/view/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/feature1': (context) => Feature1Page(),
};
