import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/settings/data/const/shared_preferences_keys.dart';

Future<bool> getThemeMode() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final bool currentThemeMode =
      sharedPreferences.getBool(sharedPreferencesThemeModeKey) ?? false;
  return currentThemeMode;
}
