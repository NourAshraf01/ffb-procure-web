import '../database.dart';

class BaseProductionVolumeTable extends SupabaseTable<BaseProductionVolumeRow> {
  @override
  String get tableName => 'base_production_volume';

  @override
  BaseProductionVolumeRow createRow(Map<String, dynamic> data) =>
      BaseProductionVolumeRow(data);
}

class BaseProductionVolumeRow extends SupabaseDataRow {
  BaseProductionVolumeRow(super.data);

  @override
  SupabaseTable get table => BaseProductionVolumeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String get weekId => getField<String>('week_id')!;
  set weekId(String value) => setField<String>('week_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);
}
