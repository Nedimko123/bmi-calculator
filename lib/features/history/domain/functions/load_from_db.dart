import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:bmi_calculator/features/homepage/domain/models/transaction.dart';

Future<List<TransactionModel>> loadData() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String transactions =
      sharedPreferences.getString(sharedPreferencesTransactionKey) ?? '[]';
  List<dynamic> transactionList = jsonDecode(transactions);
  return transactionList.map((e) => TransactionModel.fromJson(e)).toList();
}
