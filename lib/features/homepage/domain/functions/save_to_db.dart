import 'dart:convert';

import 'package:bmi_calculator/features/common/toast/success.dart';
import 'package:bmi_calculator/features/history/domain/providers.dart';
import 'package:bmi_calculator/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:bmi_calculator/features/homepage/domain/functions/calculate_bmi.dart';
import 'package:bmi_calculator/features/homepage/domain/functions/reset_data.dart';
import 'package:bmi_calculator/features/homepage/domain/models/bmi_model.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveData(WidgetRef ref, bool isAmericanMode) async {
  final DateTime dateTime = DateTime.now();
  final height = ref.read(heightProvider);
  final weight = ref.read(weightProvider);
  double bmi = calculateBMI(
      height: height, weight: weight, isAmericanMode: isAmericanMode);

  final String heightText = isAmericanMode
      ? "${height.floor() ~/ 12}'${height.toInt() % 12}\""
      : "${height.toStringAsFixed(1)} cm";
  final String weightText = isAmericanMode
      ? '${weight.toStringAsFixed(1)} lbs'
      : '${weight.toStringAsFixed(1)} kg';
  final BMIModel bmiModel = BMIModel(
      height: heightText, weight: weightText, bmi: bmi, dateTime: dateTime);

  await SharedPreferences.getInstance()
      .then((SharedPreferences sharedPreferences) {
    final String transactions =
        sharedPreferences.getString(sharedPreferencesBMIHistoryKey) ?? '[]';
    List<dynamic> transactionList = jsonDecode(transactions);
    transactionList.add(bmiModel);
    sharedPreferences.setString(
        sharedPreferencesBMIHistoryKey, jsonEncode(transactionList));
  }).whenComplete(() {
    resetData(ref);
    successToast('BMI saved');
    return ref.refresh(transactionHistoryProvider);
  });
}
