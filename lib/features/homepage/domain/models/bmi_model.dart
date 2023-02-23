import 'package:freezed_annotation/freezed_annotation.dart';

part 'bmi_model.freezed.dart';
part 'bmi_model.g.dart';

@freezed
class BMIModel with _$BMIModel {
  const factory BMIModel({
    required String height,
    required String weight,
    required double bmi,
    required DateTime dateTime,
  }) = _BMIModel;

  factory BMIModel.fromJson(Map<String, dynamic> json) =>
      _$BMIModelFromJson(json);
}
