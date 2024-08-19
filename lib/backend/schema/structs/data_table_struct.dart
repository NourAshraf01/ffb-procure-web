// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTableStruct extends BaseStruct {
  DataTableStruct({
    List<SupplierStruct>? suppliers,
    List<MaterialStruct>? materials,
  })  : _suppliers = suppliers,
        _materials = materials;

  // "suppliers" field.
  List<SupplierStruct>? _suppliers;
  List<SupplierStruct> get suppliers => _suppliers ?? const [];
  set suppliers(List<SupplierStruct>? val) => _suppliers = val;

  void updateSuppliers(Function(List<SupplierStruct>) updateFn) {
    updateFn(_suppliers ??= []);
  }

  bool hasSuppliers() => _suppliers != null;

  // "materials" field.
  List<MaterialStruct>? _materials;
  List<MaterialStruct> get materials => _materials ?? const [];
  set materials(List<MaterialStruct>? val) => _materials = val;

  void updateMaterials(Function(List<MaterialStruct>) updateFn) {
    updateFn(_materials ??= []);
  }

  bool hasMaterials() => _materials != null;

  static DataTableStruct fromMap(Map<String, dynamic> data) => DataTableStruct(
        suppliers: getStructList(
          data['suppliers'],
          SupplierStruct.fromMap,
        ),
        materials: getStructList(
          data['materials'],
          MaterialStruct.fromMap,
        ),
      );

  static DataTableStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'suppliers': _suppliers?.map((e) => e.toMap()).toList(),
        'materials': _materials?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'suppliers': serializeParam(
          _suppliers,
          ParamType.DataStruct,
          isList: true,
        ),
        'materials': serializeParam(
          _materials,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static DataTableStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataTableStruct(
        suppliers: deserializeStructParam<SupplierStruct>(
          data['suppliers'],
          ParamType.DataStruct,
          true,
          structBuilder: SupplierStruct.fromSerializableMap,
        ),
        materials: deserializeStructParam<MaterialStruct>(
          data['materials'],
          ParamType.DataStruct,
          true,
          structBuilder: MaterialStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataTableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataTableStruct &&
        listEquality.equals(suppliers, other.suppliers) &&
        listEquality.equals(materials, other.materials);
  }

  @override
  int get hashCode => const ListEquality().hash([suppliers, materials]);
}

DataTableStruct createDataTableStruct() => DataTableStruct();
