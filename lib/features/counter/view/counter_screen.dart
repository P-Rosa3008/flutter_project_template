import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/feature1_state.dart';

class Feature1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<Feature1Cubit, int>(
              builder: (context, count) {
                return Text('$count',
                    style: Theme.of(context).textTheme.headlineSmall);
              },
            ),
            ElevatedButton(
              onPressed: () => context.read<Feature1Cubit>().increment(),
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Return to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
