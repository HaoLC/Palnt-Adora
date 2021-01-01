import 'package:plantagoda/src/ui/global/custom_base_view_model.dart';

class AppinitViewModel extends CustomBaseViewModel {
  void onNextScreen() {
    bool _seen = sharedPreferences.getBool('SKIP_ONBOARDING') ?? false;
    log.i("SKIP ONBOARDING: $_seen");
    if (!_seen) {
      navigationService.navigateTo("/onboarding-view");
    } else {
      navigationService.navigateTo("/dash-board-view");
    }
  }
}
