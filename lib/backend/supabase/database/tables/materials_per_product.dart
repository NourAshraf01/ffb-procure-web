import '../database.dart';

class MaterialsPerProductTable extends SupabaseTable<MaterialsPerProductRow> {
  @override
  String get tableName => 'materials_per_product';

  @override
  MaterialsPerProductRow createRow(Map<String, dynamic> data) =>
      MaterialsPerProductRow(data);
}

class MaterialsPerProductRow extends SupabaseDataRow {
  MaterialsPerProductRow(super.data);

  @override
  SupabaseTable get table => MaterialsPerProductTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);
}
