// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      billAmount: (json['billAmount'] as num).toDouble(),
      tipPercentage: (json['tipPercentage'] as num).toDouble(),
      peopleAmount: json['peopleAmount'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'billAmount': instance.billAmount,
      'tipPercentage': instance.tipPercentage,
      'peopleAmount': instance.peopleAmount,
      'dateTime': instance.dateTime.toIso8601String(),
    };
