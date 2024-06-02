import 'package:get_it/get_it.dart';
import 'core/services/api_service.dart';
import 'core/providers/auth_cubit.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // Register services
  getIt.registerLazySingleton<ApiService>(() => ApiService());

  // Register cubits
  getIt.registerFactory(() => AuthCubit(apiService: getIt<ApiService>()));
}
