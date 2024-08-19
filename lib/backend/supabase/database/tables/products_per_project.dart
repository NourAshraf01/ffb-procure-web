import '../database.dart';

class ProductsPerProjectTable extends SupabaseTable<ProductsPerProjectRow> {
  @override
  String get tableName => 'products_per_project';

  @override
  ProductsPerProjectRow createRow(Map<String, dynamic> data) =>
      ProductsPerProjectRow(data);
}

class ProductsPerProjectRow extends SupabaseDataRow {
  ProductsPerProjectRow(super.data);

  @override
  SupabaseTable get table => ProductsPerProjectTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  int get projectId => getField<int>('project_id')!;
  set projectId(int value) => setField<int>('project_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);
}
