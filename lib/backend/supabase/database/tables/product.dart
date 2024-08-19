import '../database.dart';

class ProductTable extends SupabaseTable<ProductRow> {
  @override
  String get tableName => 'product';

  @override
  ProductRow createRow(Map<String, dynamic> data) => ProductRow(data);
}

class ProductRow extends SupabaseDataRow {
  ProductRow(super.data);

  @override
  SupabaseTable get table => ProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get description => getField<String>('description')!;
  set description(String value) => setField<String>('description', value);

  String? get specification => getField<String>('specification');
  set specification(String? value) => setField<String>('specification', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);
}
