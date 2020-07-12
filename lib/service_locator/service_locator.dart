import 'package:awanahala/services/Auth_Service.dart';
import 'package:awanahala/services/Auth_Service_Implementation.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
setupServiceLocator() {
  locator.registerLazySingleton<AuthService>(() => AuthServiceImplementation());
}
