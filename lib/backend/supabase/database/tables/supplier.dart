import '../database.dart';

class SupplierTable extends SupabaseTable<SupplierRow> {
  @override
  String get tableName => 'supplier';

  @override
  SupplierRow createRow(Map<String, dynamic> data) => SupplierRow(data);
}

class SupplierRow extends SupabaseDataRow {
  SupplierRow(super.data);

  @override
  SupabaseTable get table => SupplierTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get long => getField<double>('long');
  set long(double? value) => setField<double>('long', value);

  double? get reliability => getField<double>('reliability');
  set reliability(double? value) => setField<double>('reliability', value);

  bool? get availability => getField<bool>('availability');
  set availability(bool? value) => setField<bool>('availability', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);

  double? get riskIndex => getField<double>('risk_index');
  set riskIndex(double? value) => setField<double>('risk_index', value);

  double? get sustainabilityIndex => getField<double>('sustainability_index');
  set sustainabilityIndex(double? value) =>
      setField<double>('sustainability_index', value);
}
