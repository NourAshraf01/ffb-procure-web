// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupplierOrderStruct extends BaseStruct {
  SupplierOrderStruct({
    String? deliveryDate,
    String? externalId,
    int? id,
    int? materialId,
    String? plannedDeliveryDate,
    int? supplierId,
    double? amount,
  })  : _deliveryDate = deliveryDate,
        _externalId = externalId,
        _id = id,
        _materialId = materialId,
        _plannedDeliveryDate = plannedDeliveryDate,
        _supplierId = supplierId,
        _amount = amount;

  // "delivery_date" field.
  String? _deliveryDate;
  String get deliveryDate => _deliveryDate ?? '';
  set deliveryDate(String? val) => _deliveryDate = val;

  bool hasDeliveryDate() => _deliveryDate != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "material_id" field.
  int? _materialId;
  int get materialId => _materialId ?? 0;
  set materialId(int? val) => _materialId = val;

  void incrementMaterialId(int amount) => materialId = materialId + amount;

  bool hasMaterialId() => _materialId != null;

  // "planned_delivery_date" field.
  String? _plannedDeliveryDate;
  String get plannedDeliveryDate => _plannedDeliveryDate ?? '';
  set plannedDeliveryDate(String? val) => _plannedDeliveryDate = val;

  bool hasPlannedDeliveryDate() => _plannedDeliveryDate != null;

  // "supplier_id" field.
  int? _supplierId;
  int get supplierId => _supplierId ?? 0;
  set supplierId(int? val) => _supplierId = val;

  void incrementSupplierId(int amount) => supplierId = supplierId + amount;

  bool hasSupplierId() => _supplierId != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  static SupplierOrderStruct fromMap(Map<String, dynamic> data) =>
      SupplierOrderStruct(
        deliveryDate: data['delivery_date'] as String?,
        externalId: data['external_id'] as String?,
        id: castToType<int>(data['id']),
        materialId: castToType<int>(data['material_id']),
        plannedDeliveryDate: data['planned_delivery_date'] as String?,
        supplierId: castToType<int>(data['supplier_id']),
        amount: castToType<double>(data['amount']),
      );

  static SupplierOrderStruct? maybeFromMap(dynamic data) => data is Map
      ? SupplierOrderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'delivery_date': _deliveryDate,
        'external_id': _externalId,
        'id': _id,
        'material_id': _materialId,
        'planned_delivery_date': _plannedDeliveryDate,
        'supplier_id': _supplierId,
        'amount': _amount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'delivery_date': serializeParam(
          _deliveryDate,
          ParamType.String,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'material_id': serializeParam(
          _materialId,
          ParamType.int,
        ),
        'planned_delivery_date': serializeParam(
          _plannedDeliveryDate,
          ParamType.String,
        ),
        'supplier_id': serializeParam(
          _supplierId,
          ParamType.int,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
      }.withoutNulls;

  static SupplierOrderStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupplierOrderStruct(
        deliveryDate: deserializeParam(
          data['delivery_date'],
          ParamType.String,
          false,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        materialId: deserializeParam(
          data['material_id'],
          ParamType.int,
          false,
        ),
        plannedDeliveryDate: deserializeParam(
          data['planned_delivery_date'],
          ParamType.String,
          false,
        ),
        supplierId: deserializeParam(
          data['supplier_id'],
          ParamType.int,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SupplierOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupplierOrderStruct &&
        deliveryDate == other.deliveryDate &&
        externalId == other.externalId &&
        id == other.id &&
        materialId == other.materialId &&
        plannedDeliveryDate == other.plannedDeliveryDate &&
        supplierId == other.supplierId &&
        amount == other.amount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        deliveryDate,
        externalId,
        id,
        materialId,
        plannedDeliveryDate,
        supplierId,
        amount
      ]);
}

SupplierOrderStruct createSupplierOrderStruct({
  String? deliveryDate,
  String? externalId,
  int? id,
  int? materialId,
  String? plannedDeliveryDate,
  int? supplierId,
  double? amount,
}) =>
    SupplierOrderStruct(
      deliveryDate: deliveryDate,
      externalId: externalId,
      id: id,
      materialId: materialId,
      plannedDeliveryDate: plannedDeliveryDate,
      supplierId: supplierId,
      amount: amount,
    );
