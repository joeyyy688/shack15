// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/Utilities/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModel with ChangeNotifier {
  ThemeMode _mode;
  ThemeMode get mode => _mode;
  ThemeModel({ThemeMode mode = ThemeMode.light}) : _mode = mode;

  void changeApplicationTheme(ThemeMode selectedTheme, String theme) async {
    /// saves the current theme preferences to the shared-preferences
    await Utils().saveStringInLocalMemory('appTheme', theme);
    _mode = selectedTheme;
    notifyListeners();
  }

  void fetchTheme() async {
    final prefs = await SharedPreferences.getInstance();

    /// retrieves preferences from the shared-preferences and sets the current theme to the retrieved value
    /// if no preferences are found, it will set the default theme to light
    final theme = prefs.getString('appTheme');
    if (theme == 'dark') {
      _mode = ThemeMode.dark;
    } else {
      _mode = ThemeMode.light;
    }
    notifyListeners();
  }
}
