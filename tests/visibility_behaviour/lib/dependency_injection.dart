import 'package:get_it/get_it.dart';
import 'core/services/auth_api_service.dart';
import 'core/providers/auth_cubit.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Register services
  getIt.registerLazySingleton<AuthApiService>(() => AuthApiService());

  // Register cubits
  getIt.registerFactory(() => AuthCubit(apiService: getIt<AuthApiService>()));
}
