import 'dart:convert';

import 'package:bmi_calculator/features/common/toast/success.dart';
import 'package:bmi_calculator/features/history/domain/providers.dart';
import 'package:bmi_calculator/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:bmi_calculator/features/homepage/domain/models/bmi_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> deleteTransaction(BMIModel bmiModel, WidgetRef ref) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String transactions =
      sharedPreferences.getString(sharedPreferencesBMIHistoryKey) ?? '[]';
  List<dynamic> string = jsonDecode(transactions);
  final List<BMIModel> bmiList =
      string.map((e) => BMIModel.fromJson(e)).toList();
  bmiList.remove(bmiModel);
  await sharedPreferences
      .setString(sharedPreferencesBMIHistoryKey, jsonEncode(bmiList))
      .whenComplete(() {
    successToast('Deleted BMI');
    return ref.refresh(transactionHistoryProvider);
  });
}
