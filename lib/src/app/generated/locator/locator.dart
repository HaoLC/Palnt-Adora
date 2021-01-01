import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_localisation/stacked_localisation.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

Future setupLocator() async {
  var localisationService = await LocalisationService.getInstance();
  var sharedPreferencesService = await SharedPreferences.getInstance();
  locator.registerSingleton(localisationService);
  locator.registerSingleton(sharedPreferencesService);

  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
}
