import 'package:food_app/service/service.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => FoodService());
}

void setupLocator1() {
  locator.registerLazySingleton(() => FoodService());
}
