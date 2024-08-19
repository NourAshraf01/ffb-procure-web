import '../database.dart';

class PriceTable extends SupabaseTable<PriceRow> {
  @override
  String get tableName => 'price';

  @override
  PriceRow createRow(Map<String, dynamic> data) => PriceRow(data);
}

class PriceRow extends SupabaseDataRow {
  PriceRow(super.data);

  @override
  SupabaseTable get table => PriceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  int get supplierId => getField<int>('supplier_id')!;
  set supplierId(int value) => setField<int>('supplier_id', value);

  double? get cost => getField<double>('cost');
  set cost(double? value) => setField<double>('cost', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);
}
