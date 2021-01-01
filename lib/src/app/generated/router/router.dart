import 'package:auto_route/auto_route_annotations.dart';
import 'package:plantagoda/src/ui/views/app_init/app_init_view.dart';
import 'package:plantagoda/src/ui/views/dash_board/dash_board_view.dart';
import 'package:plantagoda/src/ui/views/on_boarding/onboarding_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: AppinitView, initial: true),
    AdaptiveRoute(page: OnboardingView),
    AdaptiveRoute(page: DashBoardView),
  ],
)
class $Router {}
