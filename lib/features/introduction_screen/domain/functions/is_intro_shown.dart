import 'package:shared_preferences/shared_preferences.dart';

import '../../data/const/shared_preferences_keys.dart';

Future<bool> isIntroShown() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  return sharedPreferences.getBool(sharedPreferencesIsIntroShownKey) ?? true;
}
