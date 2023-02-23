import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:bmi_calculator/features/homepage/domain/models/bmi_model.dart';

Future<List<BMIModel>> loadData() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String transactions =
      sharedPreferences.getString(sharedPreferencesBMIHistoryKey) ?? '[]';
  List<dynamic> transactionList = jsonDecode(transactions);
  return transactionList.map((e) => BMIModel.fromJson(e)).toList();
}
