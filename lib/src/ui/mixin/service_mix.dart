import 'package:logger/logger.dart';
import 'package:plantagoda/src/app/generated/locator/locator.dart';
import 'package:plantagoda/src/app/utils/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked_services/stacked_services.dart';

mixin ServiceMix {
  Logger log = getLogger('Locator Injector');

  final DialogService dialogService = locator<DialogService>();
  final SnackbarService snackbarService = locator<SnackbarService>();
  final NavigationService navigationService = locator<NavigationService>();
  final SharedPreferences sharedPreferences = locator<SharedPreferences>();
}
