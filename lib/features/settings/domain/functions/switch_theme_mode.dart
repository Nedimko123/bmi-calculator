import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/settings/data/const/shared_preferences_keys.dart';

Future<void> switchThemeMode(bool value) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sharedPreferences.setBool(sharedPreferencesThemeModeKey, value);
}
