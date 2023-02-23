import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required double billAmount,
    required double tipPercentage,
    required int peopleAmount,
    required DateTime dateTime,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
