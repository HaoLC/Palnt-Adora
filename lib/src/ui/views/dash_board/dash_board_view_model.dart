import 'package:plantagoda/src/ui/global/custom_base_view_model.dart';

class DashBoardViewModel extends CustomBaseViewModel {
  void onCountinue() {
    navigationService.popUntil((t)=> t.settings.name == "/onboarding-view");
  }
}
