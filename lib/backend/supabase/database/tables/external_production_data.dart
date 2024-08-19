import '../database.dart';

class ExternalProductionDataTable
    extends SupabaseTable<ExternalProductionDataRow> {
  @override
  String get tableName => 'external_production_data';

  @override
  ExternalProductionDataRow createRow(Map<String, dynamic> data) =>
      ExternalProductionDataRow(data);
}

class ExternalProductionDataRow extends SupabaseDataRow {
  ExternalProductionDataRow(super.data);

  @override
  SupabaseTable get table => ExternalProductionDataTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  String? get weekId => getField<String>('week_id');
  set weekId(String? value) => setField<String>('week_id', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);
}
