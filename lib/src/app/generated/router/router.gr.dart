// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../../ui/views/app_init/app_init_view.dart';
import '../../../ui/views/dash_board/dash_board_view.dart';
import '../../../ui/views/on_boarding/onboarding_view.dart';

class Routes {
  static const String appinitView = '/';
  static const String onboardingView = '/onboarding-view';
  static const String dashBoardView = '/dash-board-view';
  static const all = <String>{
    appinitView,
    onboardingView,
    dashBoardView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.appinitView, page: AppinitView),
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.dashBoardView, page: DashBoardView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AppinitView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AppinitView(),
        settings: data,
      );
    },
    OnboardingView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardingView(),
        settings: data,
      );
    },
    DashBoardView: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => DashBoardView(),
        settings: data,
      );
    },
  };
}
