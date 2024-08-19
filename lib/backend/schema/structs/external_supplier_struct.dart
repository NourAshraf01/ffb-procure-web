// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExternalSupplierStruct extends BaseStruct {
  ExternalSupplierStruct({
    bool? availability,
    String? country,
    String? email,
    String? id,
    String? name,
  })  : _availability = availability,
        _country = country,
        _email = email,
        _id = id,
        _name = name;

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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static ExternalSupplierStruct fromMap(Map<String, dynamic> data) =>
      ExternalSupplierStruct(
        availability: data['availability'] as bool?,
        country: data['country'] as String?,
        email: data['email'] as String?,
        id: data['id'] as String?,
        name: data['name'] as String?,
      );

  static ExternalSupplierStruct? maybeFromMap(dynamic data) => data is Map
      ? ExternalSupplierStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'availability': _availability,
        'country': _country,
        'email': _email,
        'id': _id,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExternalSupplierStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExternalSupplierStruct(
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
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExternalSupplierStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExternalSupplierStruct &&
        availability == other.availability &&
        country == other.country &&
        email == other.email &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([availability, country, email, id, name]);
}

ExternalSupplierStruct createExternalSupplierStruct({
  bool? availability,
  String? country,
  String? email,
  String? id,
  String? name,
}) =>
    ExternalSupplierStruct(
      availability: availability,
      country: country,
      email: email,
      id: id,
      name: name,
    );
