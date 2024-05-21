import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/api_service.dart';

// Ensure this line is correct
class AuthProvider extends ChangeNotifier {
  final ApiService apiService;
  bool _isAuthenticated = false;

  AuthProvider({required this.apiService});

  bool get isAuthenticated => _isAuthenticated;

  Future<void> login(String username, String password) async {
    final success = await apiService.login(username, password);
    if (success) {
      _isAuthenticated = true;
      notifyListeners();
    }
  }

  void logout() {
    _isAuthenticated = false;
    notifyListeners();
  }
}

final authProvider = ChangeNotifierProvider<AuthProvider>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return AuthProvider(apiService: apiService);
});
