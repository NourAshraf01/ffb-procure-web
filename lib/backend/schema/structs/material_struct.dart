// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialStruct extends BaseStruct {
  MaterialStruct({
    int? id,
    String? name,
    String? unit,
    String? strategy,
    String? externalId,
    double? lotSize,
    double? safetyStock,
    double? stockLevel,
  })  : _id = id,
        _name = name,
        _unit = unit,
        _strategy = strategy,
        _externalId = externalId,
        _lotSize = lotSize,
        _safetyStock = safetyStock,
        _stockLevel = stockLevel;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "strategy" field.
  String? _strategy;
  String get strategy => _strategy ?? '';
  set strategy(String? val) => _strategy = val;

  bool hasStrategy() => _strategy != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  // "lot_size" field.
  double? _lotSize;
  double get lotSize => _lotSize ?? 0.0;
  set lotSize(double? val) => _lotSize = val;

  void incrementLotSize(double amount) => lotSize = lotSize + amount;

  bool hasLotSize() => _lotSize != null;

  // "safety_stock" field.
  double? _safetyStock;
  double get safetyStock => _safetyStock ?? 0.0;
  set safetyStock(double? val) => _safetyStock = val;

  void incrementSafetyStock(double amount) =>
      safetyStock = safetyStock + amount;

  bool hasSafetyStock() => _safetyStock != null;

  // "stock_level" field.
  double? _stockLevel;
  double get stockLevel => _stockLevel ?? 0.0;
  set stockLevel(double? val) => _stockLevel = val;

  void incrementStockLevel(double amount) => stockLevel = stockLevel + amount;

  bool hasStockLevel() => _stockLevel != null;

  static MaterialStruct fromMap(Map<String, dynamic> data) => MaterialStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        unit: data['unit'] as String?,
        strategy: data['strategy'] as String?,
        externalId: data['external_id'] as String?,
        lotSize: castToType<double>(data['lot_size']),
        safetyStock: castToType<double>(data['safety_stock']),
        stockLevel: castToType<double>(data['stock_level']),
      );

  static MaterialStruct? maybeFromMap(dynamic data) =>
      data is Map ? MaterialStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'unit': _unit,
        'strategy': _strategy,
        'external_id': _externalId,
        'lot_size': _lotSize,
        'safety_stock': _safetyStock,
        'stock_level': _stockLevel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'strategy': serializeParam(
          _strategy,
          ParamType.String,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
        'lot_size': serializeParam(
          _lotSize,
          ParamType.double,
        ),
        'safety_stock': serializeParam(
          _safetyStock,
          ParamType.double,
        ),
        'stock_level': serializeParam(
          _stockLevel,
          ParamType.double,
        ),
      }.withoutNulls;

  static MaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      MaterialStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        strategy: deserializeParam(
          data['strategy'],
          ParamType.String,
          false,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
        lotSize: deserializeParam(
          data['lot_size'],
          ParamType.double,
          false,
        ),
        safetyStock: deserializeParam(
          data['safety_stock'],
          ParamType.double,
          false,
        ),
        stockLevel: deserializeParam(
          data['stock_level'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MaterialStruct &&
        id == other.id &&
        name == other.name &&
        unit == other.unit &&
        strategy == other.strategy &&
        externalId == other.externalId &&
        lotSize == other.lotSize &&
        safetyStock == other.safetyStock &&
        stockLevel == other.stockLevel;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, name, unit, strategy, externalId, lotSize, safetyStock, stockLevel]);
}

MaterialStruct createMaterialStruct({
  int? id,
  String? name,
  String? unit,
  String? strategy,
  String? externalId,
  double? lotSize,
  double? safetyStock,
  double? stockLevel,
}) =>
    MaterialStruct(
      id: id,
      name: name,
      unit: unit,
      strategy: strategy,
      externalId: externalId,
      lotSize: lotSize,
      safetyStock: safetyStock,
      stockLevel: stockLevel,
    );
