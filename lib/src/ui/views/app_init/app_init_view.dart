import 'package:flutter/material.dart';
import 'package:plantagoda/src/ui/views/app_init/app_init_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:plantagoda/src/ui/widgets/dumb/skeleton.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

class AppinitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AppinitViewModel>.reactive(
      viewModelBuilder: () => AppinitViewModel(),
      builder: (
        BuildContext context,
        AppinitViewModel model,
        Widget child,
      ) {
        return Skeleton(
            isBusy: model.isBusy,
            bodyPadding: EdgeInsets.zero,
            body: SplashScreen.callback(
              name: "assets/animations/splashscreen.flr",
              startAnimation: 'rest',
              backgroundColor: Colors.white,
              fit: BoxFit.fill,
              onSuccess: (_) => model.onNextScreen(),
              onError: (_, __) => model.onNextScreen(),
              // until: () => Future.delayed(Duration(seconds: 3)),
              isLoading: true,
            ));
      },
    );
  }
}
