import '../database.dart';

class OrderTable extends SupabaseTable<OrderRow> {
  @override
  String get tableName => 'order';

  @override
  OrderRow createRow(Map<String, dynamic> data) => OrderRow(data);
}

class OrderRow extends SupabaseDataRow {
  OrderRow(super.data);

  @override
  SupabaseTable get table => OrderTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get materialId => getField<int>('material_id')!;
  set materialId(int value) => setField<int>('material_id', value);

  int get supplierId => getField<int>('supplier_id')!;
  set supplierId(int value) => setField<int>('supplier_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  DateTime? get plannedDeliveryDate =>
      getField<DateTime>('planned_delivery_date');
  set plannedDeliveryDate(DateTime? value) =>
      setField<DateTime>('planned_delivery_date', value);

  DateTime? get deliveryDate => getField<DateTime>('delivery_date');
  set deliveryDate(DateTime? value) =>
      setField<DateTime>('delivery_date', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);
}
