// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  double get billAmount => throw _privateConstructorUsedError;
  double get tipPercentage => throw _privateConstructorUsedError;
  int get peopleAmount => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {double billAmount,
      double tipPercentage,
      int peopleAmount,
      DateTime dateTime});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmount = null,
    Object? tipPercentage = null,
    Object? peopleAmount = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      billAmount: null == billAmount
          ? _value.billAmount
          : billAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tipPercentage: null == tipPercentage
          ? _value.tipPercentage
          : tipPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      peopleAmount: null == peopleAmount
          ? _value.peopleAmount
          : peopleAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double billAmount,
      double tipPercentage,
      int peopleAmount,
      DateTime dateTime});
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billAmount = null,
    Object? tipPercentage = null,
    Object? peopleAmount = null,
    Object? dateTime = null,
  }) {
    return _then(_$_TransactionModel(
      billAmount: null == billAmount
          ? _value.billAmount
          : billAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tipPercentage: null == tipPercentage
          ? _value.tipPercentage
          : tipPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      peopleAmount: null == peopleAmount
          ? _value.peopleAmount
          : peopleAmount // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      {required this.billAmount,
      required this.tipPercentage,
      required this.peopleAmount,
      required this.dateTime});

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  final double billAmount;
  @override
  final double tipPercentage;
  @override
  final int peopleAmount;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'TransactionModel(billAmount: $billAmount, tipPercentage: $tipPercentage, peopleAmount: $peopleAmount, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.billAmount, billAmount) ||
                other.billAmount == billAmount) &&
            (identical(other.tipPercentage, tipPercentage) ||
                other.tipPercentage == tipPercentage) &&
            (identical(other.peopleAmount, peopleAmount) ||
                other.peopleAmount == peopleAmount) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, billAmount, tipPercentage, peopleAmount, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {required final double billAmount,
      required final double tipPercentage,
      required final int peopleAmount,
      required final DateTime dateTime}) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  double get billAmount;
  @override
  double get tipPercentage;
  @override
  int get peopleAmount;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
