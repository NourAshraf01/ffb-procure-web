import '../database.dart';

class MaterialsPerSupplierTable extends SupabaseTable<MaterialsPerSupplierRow> {
  @override
  String get tableName => 'materials_per_supplier';

  @override
  MaterialsPerSupplierRow createRow(Map<String, dynamic> data) =>
      MaterialsPerSupplierRow(data);
}

class MaterialsPerSupplierRow extends SupabaseDataRow {
  MaterialsPerSupplierRow(super.data);

  @override
  SupabaseTable get table => MaterialsPerSupplierTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  int get supplierId => getField<int>('supplier_id')!;
  set supplierId(int value) => setField<int>('supplier_id', value);

  int? get leadTime => getField<int>('lead_time');
  set leadTime(int? value) => setField<int>('lead_time', value);

  double? get co2Emissions => getField<double>('co2_emissions');
  set co2Emissions(double? value) => setField<double>('co2_emissions', value);

  double? get distance => getField<double>('distance');
  set distance(double? value) => setField<double>('distance', value);
}
