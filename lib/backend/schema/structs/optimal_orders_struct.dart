// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptimalOrdersStruct extends BaseStruct {
  OptimalOrdersStruct({
    List<OptimalOrderWeekStruct>? data,
    int? week,
    int? year,
  })  : _data = data,
        _week = week,
        _year = year;

  // "data" field.
  List<OptimalOrderWeekStruct>? _data;
  List<OptimalOrderWeekStruct> get data => _data ?? const [];
  set data(List<OptimalOrderWeekStruct>? val) => _data = val;

  void updateData(Function(List<OptimalOrderWeekStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

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

  static OptimalOrdersStruct fromMap(Map<String, dynamic> data) =>
      OptimalOrdersStruct(
        data: getStructList(
          data['data'],
          OptimalOrderWeekStruct.fromMap,
        ),
        week: castToType<int>(data['week']),
        year: castToType<int>(data['year']),
      );

  static OptimalOrdersStruct? maybeFromMap(dynamic data) => data is Map
      ? OptimalOrdersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
        'week': _week,
        'year': _year,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
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

  static OptimalOrdersStruct fromSerializableMap(Map<String, dynamic> data) =>
      OptimalOrdersStruct(
        data: deserializeStructParam<OptimalOrderWeekStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: OptimalOrderWeekStruct.fromSerializableMap,
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
  String toString() => 'OptimalOrdersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OptimalOrdersStruct &&
        listEquality.equals(data, other.data) &&
        week == other.week &&
        year == other.year;
  }

  @override
  int get hashCode => const ListEquality().hash([data, week, year]);
}

OptimalOrdersStruct createOptimalOrdersStruct({
  int? week,
  int? year,
}) =>
    OptimalOrdersStruct(
      week: week,
      year: year,
    );
