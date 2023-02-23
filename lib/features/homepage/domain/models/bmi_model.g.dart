// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bmi_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BMIModel _$$_BMIModelFromJson(Map<String, dynamic> json) => _$_BMIModel(
      height: json['height'] as String,
      weight: json['weight'] as String,
      bmi: (json['bmi'] as num).toDouble(),
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_BMIModelToJson(_$_BMIModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'bmi': instance.bmi,
      'dateTime': instance.dateTime.toIso8601String(),
    };
