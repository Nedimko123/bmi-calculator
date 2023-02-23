import 'package:shared_preferences/shared_preferences.dart';

import '../../data/const/shared_preferences_keys.dart';

Future<void> disableIntro() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sharedPreferences.setBool(sharedPreferencesIsIntroShownKey, false);
}
