import 'package:flutter/material.dart';
import 'features/feature1/view/feature1_screen.dart';
import 'features/home/view/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/feature1': (context) => Feature1Screen(),
};
