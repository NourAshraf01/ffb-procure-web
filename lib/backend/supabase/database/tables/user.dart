import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(super.data);

  @override
  SupabaseTable get table => UserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  DateTime? get createdDate => getField<DateTime>('created_date');
  set createdDate(DateTime? value) => setField<DateTime>('created_date', value);
}
