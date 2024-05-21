import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state/feature1_state.dart';

class Feature1Screen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(feature1Provider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count', style: Theme.of(context).textTheme.headlineMedium),
            ElevatedButton(
              onPressed: () => ref.read(feature1Provider.notifier).increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
