// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupplierDetailStruct extends BaseStruct {
  SupplierDetailStruct({
    int? id,
    double? lat,
    double? long,
    String? name,
    double? reliability,
    double? riskIndex,
    double? sustainabilityIndex,
    String? country,
    bool? availability,
    List<SupplierMaterialStruct>? materials,
    List<SupplierOrderStruct>? openOrders,
    String? externalId,
  })  : _id = id,
        _lat = lat,
        _long = long,
        _name = name,
        _reliability = reliability,
        _riskIndex = riskIndex,
        _sustainabilityIndex = sustainabilityIndex,
        _country = country,
        _availability = availability,
        _materials = materials,
        _openOrders = openOrders,
        _externalId = externalId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

  bool hasLong() => _long != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "reliability" field.
  double? _reliability;
  double get reliability => _reliability ?? 0.0;
  set reliability(double? val) => _reliability = val;

  void incrementReliability(double amount) =>
      reliability = reliability + amount;

  bool hasReliability() => _reliability != null;

  // "risk_index" field.
  double? _riskIndex;
  double get riskIndex => _riskIndex ?? 0.0;
  set riskIndex(double? val) => _riskIndex = val;

  void incrementRiskIndex(double amount) => riskIndex = riskIndex + amount;

  bool hasRiskIndex() => _riskIndex != null;

  // "sustainability_index" field.
  double? _sustainabilityIndex;
  double get sustainabilityIndex => _sustainabilityIndex ?? 0.0;
  set sustainabilityIndex(double? val) => _sustainabilityIndex = val;

  void incrementSustainabilityIndex(double amount) =>
      sustainabilityIndex = sustainabilityIndex + amount;

  bool hasSustainabilityIndex() => _sustainabilityIndex != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  set availability(bool? val) => _availability = val;

  bool hasAvailability() => _availability != null;

  // "materials" field.
  List<SupplierMaterialStruct>? _materials;
  List<SupplierMaterialStruct> get materials => _materials ?? const [];
  set materials(List<SupplierMaterialStruct>? val) => _materials = val;

  void updateMaterials(Function(List<SupplierMaterialStruct>) updateFn) {
    updateFn(_materials ??= []);
  }

  bool hasMaterials() => _materials != null;

  // "open_orders" field.
  List<SupplierOrderStruct>? _openOrders;
  List<SupplierOrderStruct> get openOrders => _openOrders ?? const [];
  set openOrders(List<SupplierOrderStruct>? val) => _openOrders = val;

  void updateOpenOrders(Function(List<SupplierOrderStruct>) updateFn) {
    updateFn(_openOrders ??= []);
  }

  bool hasOpenOrders() => _openOrders != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  static SupplierDetailStruct fromMap(Map<String, dynamic> data) =>
      SupplierDetailStruct(
        id: castToType<int>(data['id']),
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
        name: data['name'] as String?,
        reliability: castToType<double>(data['reliability']),
        riskIndex: castToType<double>(data['risk_index']),
        sustainabilityIndex: castToType<double>(data['sustainability_index']),
        country: data['country'] as String?,
        availability: data['availability'] as bool?,
        materials: getStructList(
          data['materials'],
          SupplierMaterialStruct.fromMap,
        ),
        openOrders: getStructList(
          data['open_orders'],
          SupplierOrderStruct.fromMap,
        ),
        externalId: data['external_id'] as String?,
      );

  static SupplierDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? SupplierDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'lat': _lat,
        'long': _long,
        'name': _name,
        'reliability': _reliability,
        'risk_index': _riskIndex,
        'sustainability_index': _sustainabilityIndex,
        'country': _country,
        'availability': _availability,
        'materials': _materials?.map((e) => e.toMap()).toList(),
        'open_orders': _openOrders?.map((e) => e.toMap()).toList(),
        'external_id': _externalId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'long': serializeParam(
          _long,
          ParamType.double,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'reliability': serializeParam(
          _reliability,
          ParamType.double,
        ),
        'risk_index': serializeParam(
          _riskIndex,
          ParamType.double,
        ),
        'sustainability_index': serializeParam(
          _sustainabilityIndex,
          ParamType.double,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'availability': serializeParam(
          _availability,
          ParamType.bool,
        ),
        'materials': serializeParam(
          _materials,
          ParamType.DataStruct,
          isList: true,
        ),
        'open_orders': serializeParam(
          _openOrders,
          ParamType.DataStruct,
          isList: true,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
      }.withoutNulls;

  static SupplierDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupplierDetailStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        lat: deserializeParam(
          data['lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['long'],
          ParamType.double,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        reliability: deserializeParam(
          data['reliability'],
          ParamType.double,
          false,
        ),
        riskIndex: deserializeParam(
          data['risk_index'],
          ParamType.double,
          false,
        ),
        sustainabilityIndex: deserializeParam(
          data['sustainability_index'],
          ParamType.double,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        availability: deserializeParam(
          data['availability'],
          ParamType.bool,
          false,
        ),
        materials: deserializeStructParam<SupplierMaterialStruct>(
          data['materials'],
          ParamType.DataStruct,
          true,
          structBuilder: SupplierMaterialStruct.fromSerializableMap,
        ),
        openOrders: deserializeStructParam<SupplierOrderStruct>(
          data['open_orders'],
          ParamType.DataStruct,
          true,
          structBuilder: SupplierOrderStruct.fromSerializableMap,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SupplierDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SupplierDetailStruct &&
        id == other.id &&
        lat == other.lat &&
        long == other.long &&
        name == other.name &&
        reliability == other.reliability &&
        riskIndex == other.riskIndex &&
        sustainabilityIndex == other.sustainabilityIndex &&
        country == other.country &&
        availability == other.availability &&
        listEquality.equals(materials, other.materials) &&
        listEquality.equals(openOrders, other.openOrders) &&
        externalId == other.externalId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        lat,
        long,
        name,
        reliability,
        riskIndex,
        sustainabilityIndex,
        country,
        availability,
        materials,
        openOrders,
        externalId
      ]);
}

SupplierDetailStruct createSupplierDetailStruct({
  int? id,
  double? lat,
  double? long,
  String? name,
  double? reliability,
  double? riskIndex,
  double? sustainabilityIndex,
  String? country,
  bool? availability,
  String? externalId,
}) =>
    SupplierDetailStruct(
      id: id,
      lat: lat,
      long: long,
      name: name,
      reliability: reliability,
      riskIndex: riskIndex,
      sustainabilityIndex: sustainabilityIndex,
      country: country,
      availability: availability,
      externalId: externalId,
    );
