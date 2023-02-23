// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bmi_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BMIModel _$BMIModelFromJson(Map<String, dynamic> json) {
  return _BMIModel.fromJson(json);
}

/// @nodoc
mixin _$BMIModel {
  String get height => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  double get bmi => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BMIModelCopyWith<BMIModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BMIModelCopyWith<$Res> {
  factory $BMIModelCopyWith(BMIModel value, $Res Function(BMIModel) then) =
      _$BMIModelCopyWithImpl<$Res, BMIModel>;
  @useResult
  $Res call({String height, String weight, double bmi, DateTime dateTime});
}

/// @nodoc
class _$BMIModelCopyWithImpl<$Res, $Val extends BMIModel>
    implements $BMIModelCopyWith<$Res> {
  _$BMIModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? bmi = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BMIModelCopyWith<$Res> implements $BMIModelCopyWith<$Res> {
  factory _$$_BMIModelCopyWith(
          _$_BMIModel value, $Res Function(_$_BMIModel) then) =
      __$$_BMIModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String height, String weight, double bmi, DateTime dateTime});
}

/// @nodoc
class __$$_BMIModelCopyWithImpl<$Res>
    extends _$BMIModelCopyWithImpl<$Res, _$_BMIModel>
    implements _$$_BMIModelCopyWith<$Res> {
  __$$_BMIModelCopyWithImpl(
      _$_BMIModel _value, $Res Function(_$_BMIModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
    Object? bmi = null,
    Object? dateTime = null,
  }) {
    return _then(_$_BMIModel(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BMIModel implements _BMIModel {
  const _$_BMIModel(
      {required this.height,
      required this.weight,
      required this.bmi,
      required this.dateTime});

  factory _$_BMIModel.fromJson(Map<String, dynamic> json) =>
      _$$_BMIModelFromJson(json);

  @override
  final String height;
  @override
  final String weight;
  @override
  final double bmi;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'BMIModel(height: $height, weight: $weight, bmi: $bmi, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BMIModel &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, weight, bmi, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BMIModelCopyWith<_$_BMIModel> get copyWith =>
      __$$_BMIModelCopyWithImpl<_$_BMIModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BMIModelToJson(
      this,
    );
  }
}

abstract class _BMIModel implements BMIModel {
  const factory _BMIModel(
      {required final String height,
      required final String weight,
      required final double bmi,
      required final DateTime dateTime}) = _$_BMIModel;

  factory _BMIModel.fromJson(Map<String, dynamic> json) = _$_BMIModel.fromJson;

  @override
  String get height;
  @override
  String get weight;
  @override
  double get bmi;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_BMIModelCopyWith<_$_BMIModel> get copyWith =>
      throw _privateConstructorUsedError;
}
