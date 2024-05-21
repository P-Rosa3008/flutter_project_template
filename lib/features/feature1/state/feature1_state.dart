import 'package:flutter_riverpod/flutter_riverpod.dart';

final feature1Provider =
    StateNotifierProvider<Feature1Notifier, int>((ref) => Feature1Notifier());

class Feature1Notifier extends StateNotifier<int> {
  Feature1Notifier() : super(0);

  void increment() => state++;
}
