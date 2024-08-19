// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupplierMaterialStruct extends BaseStruct {
  SupplierMaterialStruct({
    int? id,
    String? name,
    double? price,
    String? unit,
    String? externalId,
    double? distance,
    double? co2Emissions,
    double? lotSize,
    double? safetyStock,
    double? stockLevel,
    double? leadTime,
  })  : _id = id,
        _name = name,
        _price = price,
        _unit = unit,
        _externalId = externalId,
        _distance = distance,
        _co2Emissions = co2Emissions,
        _lotSize = lotSize,
        _safetyStock = safetyStock,
        _stockLevel = stockLevel,
        _leadTime = leadTime;

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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  // "distance" field.
  double? _distance;
  double get distance => _distance ?? 0.0;
  set distance(double? val) => _distance = val;

  void incrementDistance(double amount) => distance = distance + amount;

  bool hasDistance() => _distance != null;

  // "co2_emissions" field.
  double? _co2Emissions;
  double get co2Emissions => _co2Emissions ?? 0.0;
  set co2Emissions(double? val) => _co2Emissions = val;

  void incrementCo2Emissions(double amount) =>
      co2Emissions = co2Emissions + amount;

  bool hasCo2Emissions() => _co2Emissions != null;

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

  // "lead_time" field.
  double? _leadTime;
  double get leadTime => _leadTime ?? 0.0;
  set leadTime(double? val) => _leadTime = val;

  void incrementLeadTime(double amount) => leadTime = leadTime + amount;

  bool hasLeadTime() => _leadTime != null;

  static SupplierMaterialStruct fromMap(Map<String, dynamic> data) =>
      SupplierMaterialStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        unit: data['unit'] as String?,
        externalId: data['external_id'] as String?,
        distance: castToType<double>(data['distance']),
        co2Emissions: castToType<double>(data['co2_emissions']),
        lotSize: castToType<double>(data['lot_size']),
        safetyStock: castToType<double>(data['safety_stock']),
        stockLevel: castToType<double>(data['stock_level']),
        leadTime: castToType<double>(data['lead_time']),
      );

  static SupplierMaterialStruct? maybeFromMap(dynamic data) => data is Map
      ? SupplierMaterialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'price': _price,
        'unit': _unit,
        'external_id': _externalId,
        'distance': _distance,
        'co2_emissions': _co2Emissions,
        'lot_size': _lotSize,
        'safety_stock': _safetyStock,
        'stock_level': _stockLevel,
        'lead_time': _leadTime,
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
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
        'distance': serializeParam(
          _distance,
          ParamType.double,
        ),
        'co2_emissions': serializeParam(
          _co2Emissions,
          ParamType.double,
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
        'lead_time': serializeParam(
          _leadTime,
          ParamType.double,
        ),
      }.withoutNulls;

  static SupplierMaterialStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SupplierMaterialStruct(
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
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
        distance: deserializeParam(
          data['distance'],
          ParamType.double,
          false,
        ),
        co2Emissions: deserializeParam(
          data['co2_emissions'],
          ParamType.double,
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
        leadTime: deserializeParam(
          data['lead_time'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SupplierMaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupplierMaterialStruct &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        unit == other.unit &&
        externalId == other.externalId &&
        distance == other.distance &&
        co2Emissions == other.co2Emissions &&
        lotSize == other.lotSize &&
        safetyStock == other.safetyStock &&
        stockLevel == other.stockLevel &&
        leadTime == other.leadTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        price,
        unit,
        externalId,
        distance,
        co2Emissions,
        lotSize,
        safetyStock,
        stockLevel,
        leadTime
      ]);
}

SupplierMaterialStruct createSupplierMaterialStruct({
  int? id,
  String? name,
  double? price,
  String? unit,
  String? externalId,
  double? distance,
  double? co2Emissions,
  double? lotSize,
  double? safetyStock,
  double? stockLevel,
  double? leadTime,
}) =>
    SupplierMaterialStruct(
      id: id,
      name: name,
      price: price,
      unit: unit,
      externalId: externalId,
      distance: distance,
      co2Emissions: co2Emissions,
      lotSize: lotSize,
      safetyStock: safetyStock,
      stockLevel: stockLevel,
      leadTime: leadTime,
    );
