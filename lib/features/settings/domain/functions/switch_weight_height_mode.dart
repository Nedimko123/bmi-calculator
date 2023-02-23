import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/settings/data/const/shared_preferences_keys.dart';

Future<void> switchHeightWeightMode(bool value) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sharedPreferences.setBool(sharedPreferencesWeightHeightModeKey, value);
}
