import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_template/core/helpers/context_helpers.dart';

import '../bloc/counter_state.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, count) {
                return Text('$count',
                    style: Theme.of(context).textTheme.headlineSmall);
              },
            ),
            ElevatedButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: Text(context.localizations!.increment),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(context.localizations!.goToHomePage),
            ),
          ],
        ),
      ),
    );
  }
}
