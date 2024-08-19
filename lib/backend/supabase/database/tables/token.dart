import '../database.dart';

class TokenTable extends SupabaseTable<TokenRow> {
  @override
  String get tableName => 'token';

  @override
  TokenRow createRow(Map<String, dynamic> data) => TokenRow(data);
}

class TokenRow extends SupabaseDataRow {
  TokenRow(super.data);

  @override
  SupabaseTable get table => TokenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get token => getField<String>('token')!;
  set token(String value) => setField<String>('token', value);

  int get supplierId => getField<int>('supplier_id')!;
  set supplierId(int value) => setField<int>('supplier_id', value);

  DateTime get expiresAt => getField<DateTime>('expires_at')!;
  set expiresAt(DateTime value) => setField<DateTime>('expires_at', value);
}
