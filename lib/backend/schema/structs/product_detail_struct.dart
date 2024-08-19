// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDetailStruct extends BaseStruct {
  ProductDetailStruct({
    String? description,
    int? id,
    String? specification,
    List<ProductMaterialStruct>? materials,
    String? externalId,
    List<ExternalProductionStruct>? externalProduction,
  })  : _description = description,
        _id = id,
        _specification = specification,
        _materials = materials,
        _externalId = externalId,
        _externalProduction = externalProduction;

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

  // "materials" field.
  List<ProductMaterialStruct>? _materials;
  List<ProductMaterialStruct> get materials => _materials ?? const [];
  set materials(List<ProductMaterialStruct>? val) => _materials = val;

  void updateMaterials(Function(List<ProductMaterialStruct>) updateFn) {
    updateFn(_materials ??= []);
  }

  bool hasMaterials() => _materials != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  // "external_production" field.
  List<ExternalProductionStruct>? _externalProduction;
  List<ExternalProductionStruct> get externalProduction =>
      _externalProduction ?? const [];
  set externalProduction(List<ExternalProductionStruct>? val) =>
      _externalProduction = val;

  void updateExternalProduction(
      Function(List<ExternalProductionStruct>) updateFn) {
    updateFn(_externalProduction ??= []);
  }

  bool hasExternalProduction() => _externalProduction != null;

  static ProductDetailStruct fromMap(Map<String, dynamic> data) =>
      ProductDetailStruct(
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        specification: data['specification'] as String?,
        materials: getStructList(
          data['materials'],
          ProductMaterialStruct.fromMap,
        ),
        externalId: data['external_id'] as String?,
        externalProduction: getStructList(
          data['external_production'],
          ExternalProductionStruct.fromMap,
        ),
      );

  static ProductDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'id': _id,
        'specification': _specification,
        'materials': _materials?.map((e) => e.toMap()).toList(),
        'external_id': _externalId,
        'external_production':
            _externalProduction?.map((e) => e.toMap()).toList(),
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
        'materials': serializeParam(
          _materials,
          ParamType.DataStruct,
          isList: true,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
        'external_production': serializeParam(
          _externalProduction,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProductDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDetailStruct(
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
        materials: deserializeStructParam<ProductMaterialStruct>(
          data['materials'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductMaterialStruct.fromSerializableMap,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
        externalProduction: deserializeStructParam<ExternalProductionStruct>(
          data['external_production'],
          ParamType.DataStruct,
          true,
          structBuilder: ExternalProductionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductDetailStruct &&
        description == other.description &&
        id == other.id &&
        specification == other.specification &&
        listEquality.equals(materials, other.materials) &&
        externalId == other.externalId &&
        listEquality.equals(externalProduction, other.externalProduction);
  }

  @override
  int get hashCode => const ListEquality().hash([
        description,
        id,
        specification,
        materials,
        externalId,
        externalProduction
      ]);
}

ProductDetailStruct createProductDetailStruct({
  String? description,
  int? id,
  String? specification,
  String? externalId,
}) =>
    ProductDetailStruct(
      description: description,
      id: id,
      specification: specification,
      externalId: externalId,
    );
