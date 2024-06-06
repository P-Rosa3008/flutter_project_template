import 'package:flutter/material.dart';
import 'package:flutter_project_template/core/helpers/context_helpers.dart';
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
          title: Text(context.localizations!.homePageTitle),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/counterPage');
                },
                child: Text(context.localizations!.goToNextPage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
