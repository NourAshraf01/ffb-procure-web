// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExternalProductionStruct extends BaseStruct {
  ExternalProductionStruct({
    double? amount,
    int? week,
    int? year,
  })  : _amount = amount,
        _week = week,
        _year = year;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "week" field.
  int? _week;
  int get week => _week ?? 0;
  set week(int? val) => _week = val;

  void incrementWeek(int amount) => week = week + amount;

  bool hasWeek() => _week != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  static ExternalProductionStruct fromMap(Map<String, dynamic> data) =>
      ExternalProductionStruct(
        amount: castToType<double>(data['amount']),
        week: castToType<int>(data['week']),
        year: castToType<int>(data['year']),
      );

  static ExternalProductionStruct? maybeFromMap(dynamic data) => data is Map
      ? ExternalProductionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'week': _week,
        'year': _year,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'week': serializeParam(
          _week,
          ParamType.int,
        ),
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExternalProductionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExternalProductionStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        week: deserializeParam(
          data['week'],
          ParamType.int,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExternalProductionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExternalProductionStruct &&
        amount == other.amount &&
        week == other.week &&
        year == other.year;
  }

  @override
  int get hashCode => const ListEquality().hash([amount, week, year]);
}

ExternalProductionStruct createExternalProductionStruct({
  double? amount,
  int? week,
  int? year,
}) =>
    ExternalProductionStruct(
      amount: amount,
      week: week,
      year: year,
    );
