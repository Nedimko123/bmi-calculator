import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tipPercentageCalculatorProvider = StateProvider<double>((ref) => 0.10);
final billAmountControllerProvider =
    Provider<TextEditingController>((ref) => TextEditingController());
final billAmountProvider = StateProvider<double?>((ref) => 0);
final peopleAmountProvider = StateProvider<int>((ref) => 1);
