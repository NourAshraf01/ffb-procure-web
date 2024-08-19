// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptimalOrderSummaryStruct extends BaseStruct {
  OptimalOrderSummaryStruct({
    int? week,
    double? totalPrice,
    double? totalEmissions,
    double? avgLeadTime,
  })  : _week = week,
        _totalPrice = totalPrice,
        _totalEmissions = totalEmissions,
        _avgLeadTime = avgLeadTime;

  // "week" field.
  int? _week;
  int get week => _week ?? 0;
  set week(int? val) => _week = val;

  void incrementWeek(int amount) => week = week + amount;

  bool hasWeek() => _week != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  set totalPrice(double? val) => _totalPrice = val;

  void incrementTotalPrice(double amount) => totalPrice = totalPrice + amount;

  bool hasTotalPrice() => _totalPrice != null;

  // "total_emissions" field.
  double? _totalEmissions;
  double get totalEmissions => _totalEmissions ?? 0.0;
  set totalEmissions(double? val) => _totalEmissions = val;

  void incrementTotalEmissions(double amount) =>
      totalEmissions = totalEmissions + amount;

  bool hasTotalEmissions() => _totalEmissions != null;

  // "avg_lead_time" field.
  double? _avgLeadTime;
  double get avgLeadTime => _avgLeadTime ?? 0.0;
  set avgLeadTime(double? val) => _avgLeadTime = val;

  void incrementAvgLeadTime(double amount) =>
      avgLeadTime = avgLeadTime + amount;

  bool hasAvgLeadTime() => _avgLeadTime != null;

  static OptimalOrderSummaryStruct fromMap(Map<String, dynamic> data) =>
      OptimalOrderSummaryStruct(
        week: castToType<int>(data['week']),
        totalPrice: castToType<double>(data['total_price']),
        totalEmissions: castToType<double>(data['total_emissions']),
        avgLeadTime: castToType<double>(data['avg_lead_time']),
      );

  static OptimalOrderSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? OptimalOrderSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'week': _week,
        'total_price': _totalPrice,
        'total_emissions': _totalEmissions,
        'avg_lead_time': _avgLeadTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'week': serializeParam(
          _week,
          ParamType.int,
        ),
        'total_price': serializeParam(
          _totalPrice,
          ParamType.double,
        ),
        'total_emissions': serializeParam(
          _totalEmissions,
          ParamType.double,
        ),
        'avg_lead_time': serializeParam(
          _avgLeadTime,
          ParamType.double,
        ),
      }.withoutNulls;

  static OptimalOrderSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OptimalOrderSummaryStruct(
        week: deserializeParam(
          data['week'],
          ParamType.int,
          false,
        ),
        totalPrice: deserializeParam(
          data['total_price'],
          ParamType.double,
          false,
        ),
        totalEmissions: deserializeParam(
          data['total_emissions'],
          ParamType.double,
          false,
        ),
        avgLeadTime: deserializeParam(
          data['avg_lead_time'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OptimalOrderSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OptimalOrderSummaryStruct &&
        week == other.week &&
        totalPrice == other.totalPrice &&
        totalEmissions == other.totalEmissions &&
        avgLeadTime == other.avgLeadTime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([week, totalPrice, totalEmissions, avgLeadTime]);
}

OptimalOrderSummaryStruct createOptimalOrderSummaryStruct({
  int? week,
  double? totalPrice,
  double? totalEmissions,
  double? avgLeadTime,
}) =>
    OptimalOrderSummaryStruct(
      week: week,
      totalPrice: totalPrice,
      totalEmissions: totalEmissions,
      avgLeadTime: avgLeadTime,
    );
