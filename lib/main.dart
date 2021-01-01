import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:plantagoda/src/app/app.dart';
import 'package:plantagoda/src/app/generated/locator/locator.dart';
import 'package:stacked_themes/stacked_themes.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Sets logging level
  Logger.level = Level.debug;

  // Register all the models and services before the app starts
  await setupLocator();
  await ThemeManager.initialise();

  // Runs the app :)
  runApp(App());
}
