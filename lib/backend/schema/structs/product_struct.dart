// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? description,
    int? id,
    String? specification,
    String? externalId,
    int? materialCount,
  })  : _description = description,
        _id = id,
        _specification = specification,
        _externalId = externalId,
        _materialCount = materialCount;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "specification" field.
  String? _specification;
  String get specification => _specification ?? '';
  set specification(String? val) => _specification = val;

  bool hasSpecification() => _specification != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  // "material_count" field.
  int? _materialCount;
  int get materialCount => _materialCount ?? 0;
  set materialCount(int? val) => _materialCount = val;

  void incrementMaterialCount(int amount) =>
      materialCount = materialCount + amount;

  bool hasMaterialCount() => _materialCount != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        specification: data['specification'] as String?,
        externalId: data['external_id'] as String?,
        materialCount: castToType<int>(data['material_count']),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'id': _id,
        'specification': _specification,
        'external_id': _externalId,
        'material_count': _materialCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'specification': serializeParam(
          _specification,
          ParamType.String,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
        'material_count': serializeParam(
          _materialCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        specification: deserializeParam(
          data['specification'],
          ParamType.String,
          false,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
        materialCount: deserializeParam(
          data['material_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        description == other.description &&
        id == other.id &&
        specification == other.specification &&
        externalId == other.externalId &&
        materialCount == other.materialCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([description, id, specification, externalId, materialCount]);
}

ProductStruct createProductStruct({
  String? description,
  int? id,
  String? specification,
  String? externalId,
  int? materialCount,
}) =>
    ProductStruct(
      description: description,
      id: id,
      specification: specification,
      externalId: externalId,
      materialCount: materialCount,
    );
