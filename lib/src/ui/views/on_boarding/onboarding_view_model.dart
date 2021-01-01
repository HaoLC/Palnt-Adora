import 'package:plantagoda/src/ui/global/custom_base_view_model.dart';

class OnboardingViewModel extends IndexTrackingViewModelExtends {
  void onCountinue() {
    navigationService.navigateTo("/dash-board-view");
  }

  List<Map<String, String>> onboardingList = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/on_boarding/e-commerce1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/on_boarding/e-commerce2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/on_boarding/e-commerce3.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/on_boarding/e-commerce4.png"
    },
  ];
}
