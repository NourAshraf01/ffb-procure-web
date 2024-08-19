// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductMaterialStruct extends BaseStruct {
  ProductMaterialStruct({
    int? id,
    String? name,
    double? stockLevel,
    String? unit,
    double? amount,
    double? lotSize,
    double? safetyStock,
  })  : _id = id,
        _name = name,
        _stockLevel = stockLevel,
        _unit = unit,
        _amount = amount,
        _lotSize = lotSize,
        _safetyStock = safetyStock;

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

  // "stock_level" field.
  double? _stockLevel;
  double get stockLevel => _stockLevel ?? 0.0;
  set stockLevel(double? val) => _stockLevel = val;

  void incrementStockLevel(double amount) => stockLevel = stockLevel + amount;

  bool hasStockLevel() => _stockLevel != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

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

  static ProductMaterialStruct fromMap(Map<String, dynamic> data) =>
      ProductMaterialStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        stockLevel: castToType<double>(data['stock_level']),
        unit: data['unit'] as String?,
        amount: castToType<double>(data['amount']),
        lotSize: castToType<double>(data['lot_size']),
        safetyStock: castToType<double>(data['safety_stock']),
      );

  static ProductMaterialStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductMaterialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'stock_level': _stockLevel,
        'unit': _unit,
        'amount': _amount,
        'lot_size': _lotSize,
        'safety_stock': _safetyStock,
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
        'stock_level': serializeParam(
          _stockLevel,
          ParamType.double,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
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
      }.withoutNulls;

  static ProductMaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductMaterialStruct(
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
        stockLevel: deserializeParam(
          data['stock_level'],
          ParamType.double,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
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
      );

  @override
  String toString() => 'ProductMaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductMaterialStruct &&
        id == other.id &&
        name == other.name &&
        stockLevel == other.stockLevel &&
        unit == other.unit &&
        amount == other.amount &&
        lotSize == other.lotSize &&
        safetyStock == other.safetyStock;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, stockLevel, unit, amount, lotSize, safetyStock]);
}

ProductMaterialStruct createProductMaterialStruct({
  int? id,
  String? name,
  double? stockLevel,
  String? unit,
  double? amount,
  double? lotSize,
  double? safetyStock,
}) =>
    ProductMaterialStruct(
      id: id,
      name: name,
      stockLevel: stockLevel,
      unit: unit,
      amount: amount,
      lotSize: lotSize,
      safetyStock: safetyStock,
    );
