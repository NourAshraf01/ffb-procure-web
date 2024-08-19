import '../database.dart';

class WeekTable extends SupabaseTable<WeekRow> {
  @override
  String get tableName => 'week';

  @override
  WeekRow createRow(Map<String, dynamic> data) => WeekRow(data);
}

class WeekRow extends SupabaseDataRow {
  WeekRow(super.data);

  @override
  SupabaseTable get table => WeekTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int get week => getField<int>('week')!;
  set week(int value) => setField<int>('week', value);

  int? get year => getField<int>('year');
  set year(int? value) => setField<int>('year', value);
}
