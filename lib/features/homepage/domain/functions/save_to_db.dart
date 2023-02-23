import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/common/toast/error.dart';
import 'package:bmi_calculator/features/common/toast/success.dart';
import 'package:bmi_calculator/features/history/domain/providers.dart';
import 'package:bmi_calculator/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:bmi_calculator/features/homepage/domain/functions/reset_data.dart';
import 'package:bmi_calculator/features/homepage/domain/models/transaction.dart';
import 'package:bmi_calculator/features/homepage/domain/providers.dart';

Future<void> saveData(WidgetRef ref) async {
  final tipPercentage = ref.read(tipPercentageCalculatorProvider);
  final double billAmount = ref.read(billAmountProvider) ?? 0;
  if (billAmount <= 0) {
    errorToast('Please enter a valid bill amount');
    return;
  }
  final peopleAmount = ref.read(peopleAmountProvider);
  final DateTime dateTime = DateTime.now();
  final TransactionModel transactionModel = TransactionModel(
      billAmount: billAmount,
      tipPercentage: tipPercentage,
      peopleAmount: peopleAmount,
      dateTime: dateTime);

  await SharedPreferences.getInstance()
      .then((SharedPreferences sharedPreferences) {
    final String transactions =
        sharedPreferences.getString(sharedPreferencesTransactionKey) ?? '[]';
    List<dynamic> transactionList = jsonDecode(transactions);
    transactionList.add(transactionModel);
    sharedPreferences.setString(
        sharedPreferencesTransactionKey, jsonEncode(transactionList));
  }).whenComplete(() {
    resetData(ref);
    successToast('Transaction saved');
    return ref.refresh(transactionHistoryProvider);
  });
}
