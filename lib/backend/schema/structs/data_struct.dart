// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    int? leadTime,
    int? materialId,
    int? minOrder,
    String? name,
    int? price,
    double? riskIndex,
    String? strategy,
    int? supplierId,
    String? supplierName,
    double? sustainabilityIndex,
    String? unit,
  })  : _leadTime = leadTime,
        _materialId = materialId,
        _minOrder = minOrder,
        _name = name,
        _price = price,
        _riskIndex = riskIndex,
        _strategy = strategy,
        _supplierId = supplierId,
        _supplierName = supplierName,
        _sustainabilityIndex = sustainabilityIndex,
        _unit = unit;

  // "lead_time" field.
  int? _leadTime;
  int get leadTime => _leadTime ?? 0;
  set leadTime(int? val) => _leadTime = val;

  void incrementLeadTime(int amount) => leadTime = leadTime + amount;

  bool hasLeadTime() => _leadTime != null;

  // "material_id" field.
  int? _materialId;
  int get materialId => _materialId ?? 0;
  set materialId(int? val) => _materialId = val;

  void incrementMaterialId(int amount) => materialId = materialId + amount;

  bool hasMaterialId() => _materialId != null;

  // "min_order" field.
  int? _minOrder;
  int get minOrder => _minOrder ?? 0;
  set minOrder(int? val) => _minOrder = val;

  void incrementMinOrder(int amount) => minOrder = minOrder + amount;

  bool hasMinOrder() => _minOrder != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "risk_index" field.
  double? _riskIndex;
  double get riskIndex => _riskIndex ?? 0.0;
  set riskIndex(double? val) => _riskIndex = val;

  void incrementRiskIndex(double amount) => riskIndex = riskIndex + amount;

  bool hasRiskIndex() => _riskIndex != null;

  // "strategy" field.
  String? _strategy;
  String get strategy => _strategy ?? '';
  set strategy(String? val) => _strategy = val;

  bool hasStrategy() => _strategy != null;

  // "supplier_id" field.
  int? _supplierId;
  int get supplierId => _supplierId ?? 0;
  set supplierId(int? val) => _supplierId = val;

  void incrementSupplierId(int amount) => supplierId = supplierId + amount;

  bool hasSupplierId() => _supplierId != null;

  // "supplier_name" field.
  String? _supplierName;
  String get supplierName => _supplierName ?? '';
  set supplierName(String? val) => _supplierName = val;

  bool hasSupplierName() => _supplierName != null;

  // "sustainability_index" field.
  double? _sustainabilityIndex;
  double get sustainabilityIndex => _sustainabilityIndex ?? 0.0;
  set sustainabilityIndex(double? val) => _sustainabilityIndex = val;

  void incrementSustainabilityIndex(double amount) =>
      sustainabilityIndex = sustainabilityIndex + amount;

  bool hasSustainabilityIndex() => _sustainabilityIndex != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        leadTime: castToType<int>(data['lead_time']),
        materialId: castToType<int>(data['material_id']),
        minOrder: castToType<int>(data['min_order']),
        name: data['name'] as String?,
        price: castToType<int>(data['price']),
        riskIndex: castToType<double>(data['risk_index']),
        strategy: data['strategy'] as String?,
        supplierId: castToType<int>(data['supplier_id']),
        supplierName: data['supplier_name'] as String?,
        sustainabilityIndex: castToType<double>(data['sustainability_index']),
        unit: data['unit'] as String?,
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'lead_time': _leadTime,
        'material_id': _materialId,
        'min_order': _minOrder,
        'name': _name,
        'price': _price,
        'risk_index': _riskIndex,
        'strategy': _strategy,
        'supplier_id': _supplierId,
        'supplier_name': _supplierName,
        'sustainability_index': _sustainabilityIndex,
        'unit': _unit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'lead_time': serializeParam(
          _leadTime,
          ParamType.int,
        ),
        'material_id': serializeParam(
          _materialId,
          ParamType.int,
        ),
        'min_order': serializeParam(
          _minOrder,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'risk_index': serializeParam(
          _riskIndex,
          ParamType.double,
        ),
        'strategy': serializeParam(
          _strategy,
          ParamType.String,
        ),
        'supplier_id': serializeParam(
          _supplierId,
          ParamType.int,
        ),
        'supplier_name': serializeParam(
          _supplierName,
          ParamType.String,
        ),
        'sustainability_index': serializeParam(
          _sustainabilityIndex,
          ParamType.double,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        leadTime: deserializeParam(
          data['lead_time'],
          ParamType.int,
          false,
        ),
        materialId: deserializeParam(
          data['material_id'],
          ParamType.int,
          false,
        ),
        minOrder: deserializeParam(
          data['min_order'],
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
          ParamType.int,
          false,
        ),
        riskIndex: deserializeParam(
          data['risk_index'],
          ParamType.double,
          false,
        ),
        strategy: deserializeParam(
          data['strategy'],
          ParamType.String,
          false,
        ),
        supplierId: deserializeParam(
          data['supplier_id'],
          ParamType.int,
          false,
        ),
        supplierName: deserializeParam(
          data['supplier_name'],
          ParamType.String,
          false,
        ),
        sustainabilityIndex: deserializeParam(
          data['sustainability_index'],
          ParamType.double,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        leadTime == other.leadTime &&
        materialId == other.materialId &&
        minOrder == other.minOrder &&
        name == other.name &&
        price == other.price &&
        riskIndex == other.riskIndex &&
        strategy == other.strategy &&
        supplierId == other.supplierId &&
        supplierName == other.supplierName &&
        sustainabilityIndex == other.sustainabilityIndex &&
        unit == other.unit;
  }

  @override
  int get hashCode => const ListEquality().hash([
        leadTime,
        materialId,
        minOrder,
        name,
        price,
        riskIndex,
        strategy,
        supplierId,
        supplierName,
        sustainabilityIndex,
        unit
      ]);
}

DataStruct createDataStruct({
  int? leadTime,
  int? materialId,
  int? minOrder,
  String? name,
  int? price,
  double? riskIndex,
  String? strategy,
  int? supplierId,
  String? supplierName,
  double? sustainabilityIndex,
  String? unit,
}) =>
    DataStruct(
      leadTime: leadTime,
      materialId: materialId,
      minOrder: minOrder,
      name: name,
      price: price,
      riskIndex: riskIndex,
      strategy: strategy,
      supplierId: supplierId,
      supplierName: supplierName,
      sustainabilityIndex: sustainabilityIndex,
      unit: unit,
    );
