import '../database.dart';

class OptionsTable extends SupabaseTable<OptionsRow> {
  @override
  String get tableName => 'options';

  @override
  OptionsRow createRow(Map<String, dynamic> data) => OptionsRow(data);
}

class OptionsRow extends SupabaseDataRow {
  OptionsRow(super.data);

  @override
  SupabaseTable get table => OptionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get strategy => getField<String>('strategy');
  set strategy(String? value) => setField<String>('strategy', value);

  double? get overallRiskWeightRisk =>
      getField<double>('overall_risk_weight_risk');
  set overallRiskWeightRisk(double? value) =>
      setField<double>('overall_risk_weight_risk', value);

  double? get overallRiskWeightSustainability =>
      getField<double>('overall_risk_weight_sustainability');
  set overallRiskWeightSustainability(double? value) =>
      setField<double>('overall_risk_weight_sustainability', value);

  double? get riskIndexWeightCountryRisk =>
      getField<double>('risk_index_weight_country_risk');
  set riskIndexWeightCountryRisk(double? value) =>
      setField<double>('risk_index_weight_country_risk', value);

  double? get riskIndexWeightReliability =>
      getField<double>('risk_index_weight_reliability');
  set riskIndexWeightReliability(double? value) =>
      setField<double>('risk_index_weight_reliability', value);
}
