import 'package:bloc/bloc.dart';
import '../services/auth_api_service.dart';

class AuthState {
  final bool isAuthenticated;
  AuthState({required this.isAuthenticated});
}

class AuthCubit extends Cubit<AuthState> {
  final AuthApiService apiService;

  AuthCubit({required this.apiService})
      : super(AuthState(isAuthenticated: false));

  Future<void> login(String username, String password) async {
    await apiService.signInUserWithEmailAndPassword(username, password);
    if (apiService.isUserSignedIn()) {
      emit(AuthState(isAuthenticated: true));
    }
  }

  void logout() {
    emit(AuthState(isAuthenticated: false));
  }
}
