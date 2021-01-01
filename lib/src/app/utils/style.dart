import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantagoda/src/app/utils/colors.dart';

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: kColorScheme,
    buttonColor: kTeal400,
    cardColor: Colors.white,
    textSelectionColor: kTeal100,
    errorColor: kErrorRed,
    buttonTheme: const ButtonThemeData(
        colorScheme: kColorScheme,
        textTheme: ButtonTextTheme.normal,
        buttonColor: kDarkBG),
    primaryColorLight: kLightBG,
    // primaryIconTheme: _customIconTheme(base.iconTheme),
    // textTheme: _buildTextTheme(base.textTheme),
    // primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    // accentTextTheme: _buildTextTheme(base.accentTextTheme),
    // iconTheme: _customIconTheme(base.iconTheme),
    hintColor: Colors.black26,
    backgroundColor: Colors.white,
    primaryColor: kLightPrimary,
    accentColor: kLightAccent,
    cursorColor: kLightAccent,
    scaffoldBackgroundColor: kLightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: kDarkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
      iconTheme: IconThemeData(
        color: kLightAccent,
      ),
    ),
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    }),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
      labelPadding: EdgeInsets.zero,
      labelStyle: TextStyle(fontSize: 13),
      unselectedLabelStyle: TextStyle(fontSize: 13),
    ),
  );
}

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    // textTheme: _buildTextTheme(base.textTheme).apply(
    //   displayColor: kLightBG,
    //   bodyColor: kLightBG,
    // ),
    // primaryTextTheme: _buildTextTheme(base.primaryTextTheme).apply(
    //   displayColor: kLightBG,
    //   bodyColor: kLightBG,
    // ),
    // accentTextTheme: _buildTextTheme(base.accentTextTheme).apply(
    //   displayColor: kLightBG,
    //   bodyColor: kLightBG,
    // ),
    cardColor: kDarkBgLight,
    brightness: Brightness.dark,
    backgroundColor: kDarkBG,
    primaryColor: kDarkBG,
    primaryColorLight: kDarkBgLight,
    accentColor: kDarkAccent,
    scaffoldBackgroundColor: kDarkBG,
    cursorColor: kDarkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: kDarkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
      iconTheme: IconThemeData(
        color: kDarkAccent,
      ),
    ),
    buttonTheme: ButtonThemeData(
        colorScheme: kColorScheme.copyWith(onPrimary: kLightBG)),
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    }),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white,
      labelPadding: EdgeInsets.zero,
      labelStyle: TextStyle(fontSize: 13),
      unselectedLabelStyle: TextStyle(fontSize: 13),
    ),
  );
}

// TextTheme _buildTextTheme(TextTheme base) {
//   return kTextTheme(base)
//       .copyWith(
//         headline5: base.headline5
//             .copyWith(fontWeight: FontWeight.w500, color: Colors.red),
//         headline6: base.headline6.copyWith(fontSize: 18.0),
//         caption: base.caption.copyWith(
//           fontWeight: FontWeight.w400,
//           fontSize: 14.0,
//         ),
//         subtitle1: base.subtitle1.copyWith(
//           fontWeight: FontWeight.w400,
//           fontSize: 16.0,
//         ),
//         button: base.button.copyWith(
//           fontWeight: FontWeight.w400,
//           fontSize: 14.0,
//         ),
//       )
//       .apply(
//         displayColor: kGrey900,
//         bodyColor: kGrey900,
//       )
//       .copyWith(headline4: kHeadlineTheme(base).headline4.copyWith());
// }

const ColorScheme kColorScheme = ColorScheme(
  primary: kTeal100,
  primaryVariant: kGrey900,
  secondary: kTeal50,
  secondaryVariant: kGrey900,
  surface: kSurfaceWhite,
  background: kBackgroundWhite,
  error: kErrorRed,
  onPrimary: kDarkBG,
  onSecondary: kGrey900,
  onSurface: kGrey900,
  onBackground: kGrey900,
  onError: kSurfaceWhite,
  brightness: Brightness.light,
);

// TextTheme kTextTheme(theme) => GoogleFonts.vollkornTextTheme(theme);

// TextTheme kHeadlineTheme(theme, [language = 'en']) =>
//     GoogleFonts.montserratTextTheme(theme);

// IconThemeData _customIconTheme(IconThemeData original) {
//   return original.copyWith(color: kGrey900);
// }
