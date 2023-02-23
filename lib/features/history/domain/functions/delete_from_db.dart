import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi_calculator/features/common/toast/success.dart';
import 'package:bmi_calculator/features/history/domain/providers.dart';
import 'package:bmi_calculator/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:bmi_calculator/features/homepage/domain/models/transaction.dart';

Future<void> deleteTransaction(
    TransactionModel transactionModel, WidgetRef ref) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String transactions =
      sharedPreferences.getString(sharedPreferencesTransactionKey) ?? '[]';
  List<dynamic> string = jsonDecode(transactions);
  final List<TransactionModel> transactionList =
      string.map((e) => TransactionModel.fromJson(e)).toList();
  transactionList.remove(transactionModel);
  await sharedPreferences
      .setString(sharedPreferencesTransactionKey, jsonEncode(transactionList))
      .whenComplete(() {
    successToast('Deleted transaction');
    return ref.refresh(transactionHistoryProvider);
  });
}
