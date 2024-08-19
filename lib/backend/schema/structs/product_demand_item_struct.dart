// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDemandItemStruct extends BaseStruct {
  ProductDemandItemStruct({
    double? demandSum,
    String? description,
    int? productId,
    String? specification,
    double? percentageOfTotalOutput,
  })  : _demandSum = demandSum,
        _description = description,
        _productId = productId,
        _specification = specification,
        _percentageOfTotalOutput = percentageOfTotalOutput;

  // "demand_sum" field.
  double? _demandSum;
  double get demandSum => _demandSum ?? 0.0;
  set demandSum(double? val) => _demandSum = val;

  void incrementDemandSum(double amount) => demandSum = demandSum + amount;

  bool hasDemandSum() => _demandSum != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "product_id" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "specification" field.
  String? _specification;
  String get specification => _specification ?? '';
  set specification(String? val) => _specification = val;

  bool hasSpecification() => _specification != null;

  // "percentage_of_total_output" field.
  double? _percentageOfTotalOutput;
  double get percentageOfTotalOutput => _percentageOfTotalOutput ?? 0.0;
  set percentageOfTotalOutput(double? val) => _percentageOfTotalOutput = val;

  void incrementPercentageOfTotalOutput(double amount) =>
      percentageOfTotalOutput = percentageOfTotalOutput + amount;

  bool hasPercentageOfTotalOutput() => _percentageOfTotalOutput != null;

  static ProductDemandItemStruct fromMap(Map<String, dynamic> data) =>
      ProductDemandItemStruct(
        demandSum: castToType<double>(data['demand_sum']),
        description: data['description'] as String?,
        productId: castToType<int>(data['product_id']),
        specification: data['specification'] as String?,
        percentageOfTotalOutput:
            castToType<double>(data['percentage_of_total_output']),
      );

  static ProductDemandItemStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDemandItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'demand_sum': _demandSum,
        'description': _description,
        'product_id': _productId,
        'specification': _specification,
        'percentage_of_total_output': _percentageOfTotalOutput,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'demand_sum': serializeParam(
          _demandSum,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'product_id': serializeParam(
          _productId,
          ParamType.int,
        ),
        'specification': serializeParam(
          _specification,
          ParamType.String,
        ),
        'percentage_of_total_output': serializeParam(
          _percentageOfTotalOutput,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductDemandItemStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductDemandItemStruct(
        demandSum: deserializeParam(
          data['demand_sum'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        productId: deserializeParam(
          data['product_id'],
          ParamType.int,
          false,
        ),
        specification: deserializeParam(
          data['specification'],
          ParamType.String,
          false,
        ),
        percentageOfTotalOutput: deserializeParam(
          data['percentage_of_total_output'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductDemandItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDemandItemStruct &&
        demandSum == other.demandSum &&
        description == other.description &&
        productId == other.productId &&
        specification == other.specification &&
        percentageOfTotalOutput == other.percentageOfTotalOutput;
  }

  @override
  int get hashCode => const ListEquality().hash([
        demandSum,
        description,
        productId,
        specification,
        percentageOfTotalOutput
      ]);
}

ProductDemandItemStruct createProductDemandItemStruct({
  double? demandSum,
  String? description,
  int? productId,
  String? specification,
  double? percentageOfTotalOutput,
}) =>
    ProductDemandItemStruct(
      demandSum: demandSum,
      description: description,
      productId: productId,
      specification: specification,
      percentageOfTotalOutput: percentageOfTotalOutput,
    );
