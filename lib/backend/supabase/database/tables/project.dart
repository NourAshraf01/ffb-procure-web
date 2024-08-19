import '../database.dart';

class ProjectTable extends SupabaseTable<ProjectRow> {
  @override
  String get tableName => 'project';

  @override
  ProjectRow createRow(Map<String, dynamic> data) => ProjectRow(data);
}

class ProjectRow extends SupabaseDataRow {
  ProjectRow(super.data);

  @override
  SupabaseTable get table => ProjectTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get partner => getField<String>('partner')!;
  set partner(String value) => setField<String>('partner', value);

  String? get startWeek => getField<String>('start_week');
  set startWeek(String? value) => setField<String>('start_week', value);

  String? get endWeek => getField<String>('end_week');
  set endWeek(String? value) => setField<String>('end_week', value);

  String? get externalId => getField<String>('external_id');
  set externalId(String? value) => setField<String>('external_id', value);
}
