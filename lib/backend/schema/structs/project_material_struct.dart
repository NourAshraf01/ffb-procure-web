// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectMaterialStruct extends BaseStruct {
  ProjectMaterialStruct({
    int? amount,
    String? componentPartsType,
    String? description,
    int? id,
    String? rawMaterialType,
    String? specification,
    String? externalId,
  })  : _amount = amount,
        _componentPartsType = componentPartsType,
        _description = description,
        _id = id,
        _rawMaterialType = rawMaterialType,
        _specification = specification,
        _externalId = externalId;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "component_parts_type" field.
  String? _componentPartsType;
  String get componentPartsType => _componentPartsType ?? '';
  set componentPartsType(String? val) => _componentPartsType = val;

  bool hasComponentPartsType() => _componentPartsType != null;

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

  // "raw_material_type" field.
  String? _rawMaterialType;
  String get rawMaterialType => _rawMaterialType ?? '';
  set rawMaterialType(String? val) => _rawMaterialType = val;

  bool hasRawMaterialType() => _rawMaterialType != null;

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

  static ProjectMaterialStruct fromMap(Map<String, dynamic> data) =>
      ProjectMaterialStruct(
        amount: castToType<int>(data['amount']),
        componentPartsType: data['component_parts_type'] as String?,
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        rawMaterialType: data['raw_material_type'] as String?,
        specification: data['specification'] as String?,
        externalId: data['external_id'] as String?,
      );

  static ProjectMaterialStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectMaterialStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'component_parts_type': _componentPartsType,
        'description': _description,
        'id': _id,
        'raw_material_type': _rawMaterialType,
        'specification': _specification,
        'external_id': _externalId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'component_parts_type': serializeParam(
          _componentPartsType,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'raw_material_type': serializeParam(
          _rawMaterialType,
          ParamType.String,
        ),
        'specification': serializeParam(
          _specification,
          ParamType.String,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectMaterialStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectMaterialStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        componentPartsType: deserializeParam(
          data['component_parts_type'],
          ParamType.String,
          false,
        ),
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
        rawMaterialType: deserializeParam(
          data['raw_material_type'],
          ParamType.String,
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
      );

  @override
  String toString() => 'ProjectMaterialStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectMaterialStruct &&
        amount == other.amount &&
        componentPartsType == other.componentPartsType &&
        description == other.description &&
        id == other.id &&
        rawMaterialType == other.rawMaterialType &&
        specification == other.specification &&
        externalId == other.externalId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        amount,
        componentPartsType,
        description,
        id,
        rawMaterialType,
        specification,
        externalId
      ]);
}

ProjectMaterialStruct createProjectMaterialStruct({
  int? amount,
  String? componentPartsType,
  String? description,
  int? id,
  String? rawMaterialType,
  String? specification,
  String? externalId,
}) =>
    ProjectMaterialStruct(
      amount: amount,
      componentPartsType: componentPartsType,
      description: description,
      id: id,
      rawMaterialType: rawMaterialType,
      specification: specification,
      externalId: externalId,
    );
