import 'package:bloc/bloc.dart';
import '../services/api_service.dart';

class AuthState {
  final bool isAuthenticated;
  AuthState({required this.isAuthenticated});
}

class AuthCubit extends Cubit<AuthState> {
  final ApiService apiService;

  AuthCubit({required this.apiService})
      : super(AuthState(isAuthenticated: false));

  Future<void> login(String username, String password) async {
    final success = await apiService.login(username, password);
    if (success) {
      emit(AuthState(isAuthenticated: true));
    }
  }

  void logout() {
    emit(AuthState(isAuthenticated: false));
  }
}
