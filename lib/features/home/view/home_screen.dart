import 'package:flutter/material.dart';
import 'package:flutter_project_template/features/feature1/view/feature1_page.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template/core/providers/auth_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<AuthCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Feature1Page(),
                    ),
                  );
                },
                child: Text('Go to Next Page'),
              ),
              // Add more buttons for other features here
            ],
          ),
        ),
      ),
    );
  }
}
