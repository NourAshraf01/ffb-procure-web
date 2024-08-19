// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptimalOrderWeekStruct extends BaseStruct {
  OptimalOrderWeekStruct({
    int? leadTime,
    int? materialId,
    String? name,
    double? riskIndex,
    String? strategy,
    int? supplierId,
    String? supplierName,
    double? sustainabilityIndex,
    double? minOrder,
    double? price,
    String? unit,
    double? co2Emissions,
  })  : _leadTime = leadTime,
        _materialId = materialId,
        _name = name,
        _riskIndex = riskIndex,
        _strategy = strategy,
        _supplierId = supplierId,
        _supplierName = supplierName,
        _sustainabilityIndex = sustainabilityIndex,
        _minOrder = minOrder,
        _price = price,
        _unit = unit,
        _co2Emissions = co2Emissions;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

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

  // "min_order" field.
  double? _minOrder;
  double get minOrder => _minOrder ?? 0.0;
  set minOrder(double? val) => _minOrder = val;

  void incrementMinOrder(double amount) => minOrder = minOrder + amount;

  bool hasMinOrder() => _minOrder != null;

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

  // "co2_emissions" field.
  double? _co2Emissions;
  double get co2Emissions => _co2Emissions ?? 0.0;
  set co2Emissions(double? val) => _co2Emissions = val;

  void incrementCo2Emissions(double amount) =>
      co2Emissions = co2Emissions + amount;

  bool hasCo2Emissions() => _co2Emissions != null;

  static OptimalOrderWeekStruct fromMap(Map<String, dynamic> data) =>
      OptimalOrderWeekStruct(
        leadTime: castToType<int>(data['lead_time']),
        materialId: castToType<int>(data['material_id']),
        name: data['name'] as String?,
        riskIndex: castToType<double>(data['risk_index']),
        strategy: data['strategy'] as String?,
        supplierId: castToType<int>(data['supplier_id']),
        supplierName: data['supplier_name'] as String?,
        sustainabilityIndex: castToType<double>(data['sustainability_index']),
        minOrder: castToType<double>(data['min_order']),
        price: castToType<double>(data['price']),
        unit: data['unit'] as String?,
        co2Emissions: castToType<double>(data['co2_emissions']),
      );

  static OptimalOrderWeekStruct? maybeFromMap(dynamic data) => data is Map
      ? OptimalOrderWeekStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'lead_time': _leadTime,
        'material_id': _materialId,
        'name': _name,
        'risk_index': _riskIndex,
        'strategy': _strategy,
        'supplier_id': _supplierId,
        'supplier_name': _supplierName,
        'sustainability_index': _sustainabilityIndex,
        'min_order': _minOrder,
        'price': _price,
        'unit': _unit,
        'co2_emissions': _co2Emissions,
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
        'name': serializeParam(
          _name,
          ParamType.String,
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
        'min_order': serializeParam(
          _minOrder,
          ParamType.double,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'co2_emissions': serializeParam(
          _co2Emissions,
          ParamType.double,
        ),
      }.withoutNulls;

  static OptimalOrderWeekStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OptimalOrderWeekStruct(
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
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
        minOrder: deserializeParam(
          data['min_order'],
          ParamType.double,
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
        co2Emissions: deserializeParam(
          data['co2_emissions'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OptimalOrderWeekStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OptimalOrderWeekStruct &&
        leadTime == other.leadTime &&
        materialId == other.materialId &&
        name == other.name &&
        riskIndex == other.riskIndex &&
        strategy == other.strategy &&
        supplierId == other.supplierId &&
        supplierName == other.supplierName &&
        sustainabilityIndex == other.sustainabilityIndex &&
        minOrder == other.minOrder &&
        price == other.price &&
        unit == other.unit &&
        co2Emissions == other.co2Emissions;
  }

  @override
  int get hashCode => const ListEquality().hash([
        leadTime,
        materialId,
        name,
        riskIndex,
        strategy,
        supplierId,
        supplierName,
        sustainabilityIndex,
        minOrder,
        price,
        unit,
        co2Emissions
      ]);
}

OptimalOrderWeekStruct createOptimalOrderWeekStruct({
  int? leadTime,
  int? materialId,
  String? name,
  double? riskIndex,
  String? strategy,
  int? supplierId,
  String? supplierName,
  double? sustainabilityIndex,
  double? minOrder,
  double? price,
  String? unit,
  double? co2Emissions,
}) =>
    OptimalOrderWeekStruct(
      leadTime: leadTime,
      materialId: materialId,
      name: name,
      riskIndex: riskIndex,
      strategy: strategy,
      supplierId: supplierId,
      supplierName: supplierName,
      sustainabilityIndex: sustainabilityIndex,
      minOrder: minOrder,
      price: price,
      unit: unit,
      co2Emissions: co2Emissions,
    );
