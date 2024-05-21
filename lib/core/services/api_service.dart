import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

class ApiService {
  Future<bool> login(String username, String password) async {
    // Implement your login API call here
    // Example:
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    return username == 'user' && password == 'password'; // Dummy authentication
  }
}
