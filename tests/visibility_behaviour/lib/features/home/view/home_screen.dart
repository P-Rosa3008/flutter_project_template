import 'package:flutter/material.dart';
import 'package:flutter_project_template/core/helpers/context_helpers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template/core/providers/auth_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool visible = true;
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
              Visibility(
                visible: visible,
                child: TestWidget(),
                replacement: TestWidgetFalse(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  num a = 1;
  num b = 3;
  late num sum;
  num calculate() {
    return a + b;
  }

  @override
  void initState() {
    super.initState();
    sum = calculate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      width: 200,
      child: Text(sum.toString()),
      alignment: Alignment.center,
    );
  }
}

class TestWidgetFalse extends StatefulWidget {
  const TestWidgetFalse({super.key});

  @override
  State<TestWidgetFalse> createState() => _TestWidgetFalseState();
}

class _TestWidgetFalseState extends State<TestWidgetFalse> {
  num a = 1;
  num b = 56;
  late num sum;
  num calculate() {
    return a + b;
  }

  @override
  void initState() {
    super.initState();
    sum = calculate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 200,
      width: 200,
      child: Text(sum.toString()),
      alignment: Alignment.center,
    );
  }
}
