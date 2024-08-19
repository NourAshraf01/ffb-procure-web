// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryRiskStruct extends BaseStruct {
  CountryRiskStruct({
    String? countrycode,
    String? description,
    double? index,
  })  : _countrycode = countrycode,
        _description = description,
        _index = index;

  // "countrycode" field.
  String? _countrycode;
  String get countrycode => _countrycode ?? '';
  set countrycode(String? val) => _countrycode = val;

  bool hasCountrycode() => _countrycode != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "index" field.
  double? _index;
  double get index => _index ?? 0.0;
  set index(double? val) => _index = val;

  void incrementIndex(double amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static CountryRiskStruct fromMap(Map<String, dynamic> data) =>
      CountryRiskStruct(
        countrycode: data['countrycode'] as String?,
        description: data['description'] as String?,
        index: castToType<double>(data['index']),
      );

  static CountryRiskStruct? maybeFromMap(dynamic data) => data is Map
      ? CountryRiskStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'countrycode': _countrycode,
        'description': _description,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'countrycode': serializeParam(
          _countrycode,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'index': serializeParam(
          _index,
          ParamType.double,
        ),
      }.withoutNulls;

  static CountryRiskStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountryRiskStruct(
        countrycode: deserializeParam(
          data['countrycode'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CountryRiskStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryRiskStruct &&
        countrycode == other.countrycode &&
        description == other.description &&
        index == other.index;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([countrycode, description, index]);
}

CountryRiskStruct createCountryRiskStruct({
  String? countrycode,
  String? description,
  double? index,
}) =>
    CountryRiskStruct(
      countrycode: countrycode,
      description: description,
      index: index,
    );
