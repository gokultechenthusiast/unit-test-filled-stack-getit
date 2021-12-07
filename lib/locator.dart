import 'package:get_it/get_it.dart';

import 'services/api/api.dart';
import 'services/api/http_api.dart';
import 'services/storage/localstorage_service.dart';
import 'services/storage/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<Api>(() => HttpApi());
  locator.registerLazySingleton<StorageService>(() => LocalStorageService());
}