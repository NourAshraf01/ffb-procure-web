// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectDetailStruct extends BaseStruct {
  ProjectDetailStruct({
    int? endWeek,
    int? endYear,
    int? id,
    String? partner,
    int? startWeek,
    int? startYear,
    List<ProjectMaterialStruct>? materials,
    String? externalId,
  })  : _endWeek = endWeek,
        _endYear = endYear,
        _id = id,
        _partner = partner,
        _startWeek = startWeek,
        _startYear = startYear,
        _materials = materials,
        _externalId = externalId;

  // "end_week" field.
  int? _endWeek;
  int get endWeek => _endWeek ?? 0;
  set endWeek(int? val) => _endWeek = val;

  void incrementEndWeek(int amount) => endWeek = endWeek + amount;

  bool hasEndWeek() => _endWeek != null;

  // "end_year" field.
  int? _endYear;
  int get endYear => _endYear ?? 0;
  set endYear(int? val) => _endYear = val;

  void incrementEndYear(int amount) => endYear = endYear + amount;

  bool hasEndYear() => _endYear != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "partner" field.
  String? _partner;
  String get partner => _partner ?? '';
  set partner(String? val) => _partner = val;

  bool hasPartner() => _partner != null;

  // "start_week" field.
  int? _startWeek;
  int get startWeek => _startWeek ?? 0;
  set startWeek(int? val) => _startWeek = val;

  void incrementStartWeek(int amount) => startWeek = startWeek + amount;

  bool hasStartWeek() => _startWeek != null;

  // "start_year" field.
  int? _startYear;
  int get startYear => _startYear ?? 0;
  set startYear(int? val) => _startYear = val;

  void incrementStartYear(int amount) => startYear = startYear + amount;

  bool hasStartYear() => _startYear != null;

  // "materials" field.
  List<ProjectMaterialStruct>? _materials;
  List<ProjectMaterialStruct> get materials => _materials ?? const [];
  set materials(List<ProjectMaterialStruct>? val) => _materials = val;

  void updateMaterials(Function(List<ProjectMaterialStruct>) updateFn) {
    updateFn(_materials ??= []);
  }

  bool hasMaterials() => _materials != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  static ProjectDetailStruct fromMap(Map<String, dynamic> data) =>
      ProjectDetailStruct(
        endWeek: castToType<int>(data['end_week']),
        endYear: castToType<int>(data['end_year']),
        id: castToType<int>(data['id']),
        partner: data['partner'] as String?,
        startWeek: castToType<int>(data['start_week']),
        startYear: castToType<int>(data['start_year']),
        materials: getStructList(
          data['materials'],
          ProjectMaterialStruct.fromMap,
        ),
        externalId: data['external_id'] as String?,
      );

  static ProjectDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'end_week': _endWeek,
        'end_year': _endYear,
        'id': _id,
        'partner': _partner,
        'start_week': _startWeek,
        'start_year': _startYear,
        'materials': _materials?.map((e) => e.toMap()).toList(),
        'external_id': _externalId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'end_week': serializeParam(
          _endWeek,
          ParamType.int,
        ),
        'end_year': serializeParam(
          _endYear,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'partner': serializeParam(
          _partner,
          ParamType.String,
        ),
        'start_week': serializeParam(
          _startWeek,
          ParamType.int,
        ),
        'start_year': serializeParam(
          _startYear,
          ParamType.int,
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
      }.withoutNulls;

  static ProjectDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectDetailStruct(
        endWeek: deserializeParam(
          data['end_week'],
          ParamType.int,
          false,
        ),
        endYear: deserializeParam(
          data['end_year'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        partner: deserializeParam(
          data['partner'],
          ParamType.String,
          false,
        ),
        startWeek: deserializeParam(
          data['start_week'],
          ParamType.int,
          false,
        ),
        startYear: deserializeParam(
          data['start_year'],
          ParamType.int,
          false,
        ),
        materials: deserializeStructParam<ProjectMaterialStruct>(
          data['materials'],
          ParamType.DataStruct,
          true,
          structBuilder: ProjectMaterialStruct.fromSerializableMap,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProjectDetailStruct &&
        endWeek == other.endWeek &&
        endYear == other.endYear &&
        id == other.id &&
        partner == other.partner &&
        startWeek == other.startWeek &&
        startYear == other.startYear &&
        listEquality.equals(materials, other.materials) &&
        externalId == other.externalId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        endWeek,
        endYear,
        id,
        partner,
        startWeek,
        startYear,
        materials,
        externalId
      ]);
}

ProjectDetailStruct createProjectDetailStruct({
  int? endWeek,
  int? endYear,
  int? id,
  String? partner,
  int? startWeek,
  int? startYear,
  String? externalId,
}) =>
    ProjectDetailStruct(
      endWeek: endWeek,
      endYear: endYear,
      id: id,
      partner: partner,
      startWeek: startWeek,
      startYear: startYear,
      externalId: externalId,
    );
