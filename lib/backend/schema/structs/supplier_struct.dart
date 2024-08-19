// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupplierStruct extends BaseStruct {
  SupplierStruct({
    int? id,
    double? lat,
    double? long,
    String? name,
    double? reliability,
    double? riskIndex,
    double? sustainabilityIndex,
    bool? availability,
    String? country,
    String? email,
    int? matCount,
    int? orderCount,
    String? externalId,
  })  : _id = id,
        _lat = lat,
        _long = long,
        _name = name,
        _reliability = reliability,
        _riskIndex = riskIndex,
        _sustainabilityIndex = sustainabilityIndex,
        _availability = availability,
        _country = country,
        _email = email,
        _matCount = matCount,
        _orderCount = orderCount,
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

  // "availability" field.
  bool? _availability;
  bool get availability => _availability ?? false;
  set availability(bool? val) => _availability = val;

  bool hasAvailability() => _availability != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "mat_count" field.
  int? _matCount;
  int get matCount => _matCount ?? 0;
  set matCount(int? val) => _matCount = val;

  void incrementMatCount(int amount) => matCount = matCount + amount;

  bool hasMatCount() => _matCount != null;

  // "order_count" field.
  int? _orderCount;
  int get orderCount => _orderCount ?? 0;
  set orderCount(int? val) => _orderCount = val;

  void incrementOrderCount(int amount) => orderCount = orderCount + amount;

  bool hasOrderCount() => _orderCount != null;

  // "external_id" field.
  String? _externalId;
  String get externalId => _externalId ?? '';
  set externalId(String? val) => _externalId = val;

  bool hasExternalId() => _externalId != null;

  static SupplierStruct fromMap(Map<String, dynamic> data) => SupplierStruct(
        id: castToType<int>(data['id']),
        lat: castToType<double>(data['lat']),
        long: castToType<double>(data['long']),
        name: data['name'] as String?,
        reliability: castToType<double>(data['reliability']),
        riskIndex: castToType<double>(data['risk_index']),
        sustainabilityIndex: castToType<double>(data['sustainability_index']),
        availability: data['availability'] as bool?,
        country: data['country'] as String?,
        email: data['email'] as String?,
        matCount: castToType<int>(data['mat_count']),
        orderCount: castToType<int>(data['order_count']),
        externalId: data['external_id'] as String?,
      );

  static SupplierStruct? maybeFromMap(dynamic data) =>
      data is Map ? SupplierStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'lat': _lat,
        'long': _long,
        'name': _name,
        'reliability': _reliability,
        'risk_index': _riskIndex,
        'sustainability_index': _sustainabilityIndex,
        'availability': _availability,
        'country': _country,
        'email': _email,
        'mat_count': _matCount,
        'order_count': _orderCount,
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
        'availability': serializeParam(
          _availability,
          ParamType.bool,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'mat_count': serializeParam(
          _matCount,
          ParamType.int,
        ),
        'order_count': serializeParam(
          _orderCount,
          ParamType.int,
        ),
        'external_id': serializeParam(
          _externalId,
          ParamType.String,
        ),
      }.withoutNulls;

  static SupplierStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupplierStruct(
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
        availability: deserializeParam(
          data['availability'],
          ParamType.bool,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        matCount: deserializeParam(
          data['mat_count'],
          ParamType.int,
          false,
        ),
        orderCount: deserializeParam(
          data['order_count'],
          ParamType.int,
          false,
        ),
        externalId: deserializeParam(
          data['external_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SupplierStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupplierStruct &&
        id == other.id &&
        lat == other.lat &&
        long == other.long &&
        name == other.name &&
        reliability == other.reliability &&
        riskIndex == other.riskIndex &&
        sustainabilityIndex == other.sustainabilityIndex &&
        availability == other.availability &&
        country == other.country &&
        email == other.email &&
        matCount == other.matCount &&
        orderCount == other.orderCount &&
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
        availability,
        country,
        email,
        matCount,
        orderCount,
        externalId
      ]);
}

SupplierStruct createSupplierStruct({
  int? id,
  double? lat,
  double? long,
  String? name,
  double? reliability,
  double? riskIndex,
  double? sustainabilityIndex,
  bool? availability,
  String? country,
  String? email,
  int? matCount,
  int? orderCount,
  String? externalId,
}) =>
    SupplierStruct(
      id: id,
      lat: lat,
      long: long,
      name: name,
      reliability: reliability,
      riskIndex: riskIndex,
      sustainabilityIndex: sustainabilityIndex,
      availability: availability,
      country: country,
      email: email,
      matCount: matCount,
      orderCount: orderCount,
      externalId: externalId,
    );
