import '../database.dart';

class MaterialTable extends SupabaseTable<MaterialRow> {
  @override
  String get tableName => 'material';

  @override
  MaterialRow createRow(Map<String, dynamic> data) => MaterialRow(data);
}

class MaterialRow extends SupabaseDataRow {
  MaterialRow(super.data);

  @override
  SupabaseTable get table => MaterialTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  double? get safetyStock => getField<double>('safety_stock');
  set safetyStock(double? value) => setField<double>('safety_stock', value);

  double? get lotSize => getField<double>('lot_size');
  set lotSize(double? value) => setField<double>('lot_size', value);

  double? get stockLevel => getField<double>('stock_level');
  set stockLevel(double? value) => setField<double>('stock_level', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  String? get strategy => getField<String>('strategy');
  set strategy(String? value) => setField<String>('strategy', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);
}
