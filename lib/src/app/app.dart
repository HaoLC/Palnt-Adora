import 'package:flutter/material.dart';
import 'package:plantagoda/src/app/generated/locator/locator.dart';
import 'package:plantagoda/src/app/generated/router/route_observer.dart';
import 'package:plantagoda/src/app/generated/router/router.gr.dart' as RouterGR;
import 'package:plantagoda/src/app/utils/style.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      darkTheme: buildDarkTheme(),
      lightTheme: buildLightTheme(),
      statusBarColorBuilder: (theme) => theme.accentColor,
      // themes: getThemes(),
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        debugShowCheckedModeBanner: false,
        title: "plantagoda",
        navigatorObservers: [
          MyRouteObserver(),
        ],
        initialRoute: RouterGR.Routes.appinitView,
        onGenerateRoute: RouterGR.Router().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
      ),
    );
  }
}
