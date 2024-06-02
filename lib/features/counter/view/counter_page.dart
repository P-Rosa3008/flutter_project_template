import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template/features/feature1/bloc/feature1_state.dart';
import 'package:flutter_project_template/features/feature1/view/feature1_screen.dart';

class Feature1Page extends StatelessWidget {
  const Feature1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Feature1Cubit(),
      child: Feature1Screen(),
    );
  }
}
