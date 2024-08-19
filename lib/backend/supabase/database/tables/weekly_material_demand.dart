import '../database.dart';

class WeeklyMaterialDemandTable extends SupabaseTable<WeeklyMaterialDemandRow> {
  @override
  String get tableName => 'weekly_material_demand';

  @override
  WeeklyMaterialDemandRow createRow(Map<String, dynamic> data) =>
      WeeklyMaterialDemandRow(data);
}

class WeeklyMaterialDemandRow extends SupabaseDataRow {
  WeeklyMaterialDemandRow(super.data);

  @override
  SupabaseTable get table => WeeklyMaterialDemandTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get weekId => getField<String>('week_id');
  set weekId(String? value) => setField<String>('week_id', value);
}
