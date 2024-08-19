import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Battery API Group Code

class BatteryAPIGroup {
  static String getBaseUrl() => 'https://batteryapi-phi.vercel.app/api';
  static Map<String, String> headers = {};
  static GetSuppliersCall getSuppliersCall = GetSuppliersCall();
  static GetSupplierCall getSupplierCall = GetSupplierCall();
  static UpsertSupplierCall upsertSupplierCall = UpsertSupplierCall();
  static CreateSupplierCall createSupplierCall = CreateSupplierCall();
  static UpdateProductCall updateProductCall = UpdateProductCall();
  static CreateProductCall createProductCall = CreateProductCall();
  static UpsertMaterialCall upsertMaterialCall = UpsertMaterialCall();
  static GetProjectsCall getProjectsCall = GetProjectsCall();
  static UpsertProjectCall upsertProjectCall = UpsertProjectCall();
  static GetProductsCall getProductsCall = GetProductsCall();
  static ShowCountryRiskCall showCountryRiskCall = ShowCountryRiskCall();
  static RequestDataUpdateCall requestDataUpdateCall = RequestDataUpdateCall();
  static GetMaterialsCall getMaterialsCall = GetMaterialsCall();
  static GetProjectCall getProjectCall = GetProjectCall();
  static GetProductCall getProductCall = GetProductCall();
  static GetMaterialCall getMaterialCall = GetMaterialCall();
  static OptimalOrdersCall optimalOrdersCall = OptimalOrdersCall();
  static MaterialWithoutSupplierCall materialWithoutSupplierCall =
      MaterialWithoutSupplierCall();
  static CriticalSuppliersCall criticalSuppliersCall = CriticalSuppliersCall();
  static WeeklyProductionCall weeklyProductionCall = WeeklyProductionCall();
  static OptimalOrdersOneWeekCall optimalOrdersOneWeekCall =
      OptimalOrdersOneWeekCall();
  static DeleteMaterialCall deleteMaterialCall = DeleteMaterialCall();
  static DeleteSupplierCall deleteSupplierCall = DeleteSupplierCall();
  static ProductsWithoutMaterialsCall productsWithoutMaterialsCall =
      ProductsWithoutMaterialsCall();
  static MaterialPerSupplierWithoutPriceCall
      materialPerSupplierWithoutPriceCall =
      MaterialPerSupplierWithoutPriceCall();
  static MaterialDemandFiveWeeksCall materialDemandFiveWeeksCall =
      MaterialDemandFiveWeeksCall();
  static ProductDemandFiveWeeksCall productDemandFiveWeeksCall =
      ProductDemandFiveWeeksCall();
  static GetExternalSuppliersCall getExternalSuppliersCall =
      GetExternalSuppliersCall();
  static EditOptionsCall editOptionsCall = EditOptionsCall();
}

class GetSuppliersCall {
  Future<ApiCallResponse> call({
    List<int>? materialIdsList,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();
    final materialIds = _serializeList(materialIdsList);

    return ApiManager.instance.makeApiCall(
      callName: 'Get Suppliers',
      apiUrl: '$baseUrl/supplier',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'material_ids': materialIds,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? lat(dynamic response) => (getJsonField(
        response,
        r'''$[:].lat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? long(dynamic response) => (getJsonField(
        response,
        r'''$[:].long''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? quality(dynamic response) => (getJsonField(
        response,
        r'''$[:].quality''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? reliability(dynamic response) => (getJsonField(
        response,
        r'''$[:].reliability''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? risk(dynamic response) => (getJsonField(
        response,
        r'''$[:].risk_index''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? sustainability(dynamic response) => (getJsonField(
        response,
        r'''$[:].sustainability_index''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<bool>? availability(dynamic response) => (getJsonField(
        response,
        r'''$[:].availability''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? country(dynamic response) => (getJsonField(
        response,
        r'''$[:].country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? email(dynamic response) => getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?;
}

class GetSupplierCall {
  Future<ApiCallResponse> call({
    int? supplierId,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Supplier',
      apiUrl: '$baseUrl/supplier/$supplierId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertSupplierCall {
  Future<ApiCallResponse> call({
    String? name = '',
    double? lat,
    double? long,
    double? riskIndex,
    double? sustainabilityIndex,
    double? quality,
    double? reliability,
    int? id,
    dynamic materialsJson,
    String? country = '',
    String? email = '',
    bool? availability,
    String? externalId = '',
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final materials = _serializeJson(materialsJson, true);
    final ffApiRequestBody = '''
[
  {
    "id": $id,
    "name": "$name",
    "lat": $lat,
    "long": $long,
    "materials": $materials,
    "availability": $availability,
    "country": "$country",
    "email": "$email",
    "external_id": "$externalId"
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert  Supplier',
      apiUrl: '$baseUrl/supplier',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSupplierCall {
  Future<ApiCallResponse> call({
    String? name = '',
    double? lat,
    double? long,
    dynamic materialsJson,
    String? country = '',
    String? email = '',
    bool? availability,
    String? externalId = '',
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final materials = _serializeJson(materialsJson, true);
    final ffApiRequestBody = '''
[
  {
    "name": "$name",
    "lat": $lat,
    "long": $long,
    "country": "$country",
    "materials": $materials,
    "availability": $availability,
    "email": "$email",
    "external_id": "$externalId"
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Supplier',
      apiUrl: '$baseUrl/supplier',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProductCall {
  Future<ApiCallResponse> call({
    String? description = '',
    String? specification = '',
    int? id,
    dynamic materialsJson,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final materials = _serializeJson(materialsJson, true);
    final ffApiRequestBody = '''
[
  {
    "id": $id,
    "description": "$description",
    "specification": "$specification",
    "materials": $materials
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Product',
      apiUrl: '$baseUrl/products',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProductCall {
  Future<ApiCallResponse> call({
    String? description = '',
    String? specification = '',
    dynamic materialsJson,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final materials = _serializeJson(materialsJson, true);
    final ffApiRequestBody = '''
[
  {
    "description": "$description",
    "specification": "$specification",
    "materials": $materials
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create  Product',
      apiUrl: '$baseUrl/products',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertMaterialCall {
  Future<ApiCallResponse> call({
    String? name = '',
    double? safetyStock,
    double? lotSize,
    double? stockLevel,
    String? unit = '',
    int? id,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
[
  {
    "name": "$name",
    "safety_stock": $safetyStock,
    "lot_size": $lotSize,
    "stock_level": $stockLevel,
    "unit": "$unit",
    "id": $id
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert Material',
      apiUrl: '$baseUrl/materials',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Projects',
      apiUrl: '$baseUrl/projects',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertProjectCall {
  Future<ApiCallResponse> call({
    int? id,
    String? partner = '',
    int? startWeek,
    int? startYear,
    int? endWeek,
    int? endYear,
    String? productionSchedule = '',
    String? machineLaborAvailability = '',
    dynamic productsJson,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final products = _serializeJson(productsJson, true);
    final ffApiRequestBody = '''
[
 {
        "partner": "$partner",
        "start_week": $startWeek,
        "start_year": $startYear,
        "end_week": $endWeek,
        "end_year": $endYear,
        "production_schedule": "$productionSchedule",
        "machine_labor_availability":"$machineLaborAvailability" ,
        "products": $products
    }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'Upsert Project',
      apiUrl: '$baseUrl/projects',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Products',
      apiUrl: '$baseUrl/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ShowCountryRiskCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Show Country Risk',
      apiUrl: '$baseUrl/kpi/countryrisk',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestDataUpdateCall {
  Future<ApiCallResponse> call({
    int? supplierId,
    String? email = '',
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Request Data Update',
      apiUrl: '$baseUrl/external/generate_link/$supplierId',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMaterialsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Materials',
      apiUrl: '$baseUrl/materials',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectCall {
  Future<ApiCallResponse> call({
    int? projectId,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Project',
      apiUrl: '$baseUrl/projects/$projectId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductCall {
  Future<ApiCallResponse> call({
    int? productId,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Product',
      apiUrl: '$baseUrl/products/$productId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMaterialCall {
  Future<ApiCallResponse> call({
    int? materialId,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Material',
      apiUrl: '$baseUrl/materials/$materialId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OptimalOrdersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Optimal Orders',
      apiUrl: '$baseUrl/kpi/optimalOrders',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MaterialWithoutSupplierCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'material without Supplier',
      apiUrl: '$baseUrl/kpi/materialWithoutSupplier',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class CriticalSuppliersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'critical Suppliers',
      apiUrl: '$baseUrl/kpi/criticalSuppliers',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class WeeklyProductionCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Weekly Production',
      apiUrl: '$baseUrl/kpi/production',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OptimalOrdersOneWeekCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'optimal orders one week',
      apiUrl: '$baseUrl/kpi/optimalOrdersOneWeek',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? optimalOrdersOneWeek(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class DeleteMaterialCall {
  Future<ApiCallResponse> call({
    int? materialId,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Material',
      apiUrl: '$baseUrl/materials/$materialId',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSupplierCall {
  Future<ApiCallResponse> call({
    int? supplierId,
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Supplier',
      apiUrl: '$baseUrl/supplier/$supplierId',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProductsWithoutMaterialsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Products Without Materials',
      apiUrl: '$baseUrl/kpi/productsWithoutMaterials',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class MaterialPerSupplierWithoutPriceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Material Per Supplier Without Price',
      apiUrl: '$baseUrl/kpi/MaterialPerSupplierWithoutPrice',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class MaterialDemandFiveWeeksCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MaterialDemandFiveWeeks',
      apiUrl: '$baseUrl/kpi/materialDemand5Weeks',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? demand(dynamic response) => (getJsonField(
        response,
        r'''$[:].demand_sum''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? materialID(dynamic response) => (getJsonField(
        response,
        r'''$[:].material_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? materialName(dynamic response) => (getJsonField(
        response,
        r'''$[:].material_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? percentage(dynamic response) => (getJsonField(
        response,
        r'''$[:].percentage_of_current_stock''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ProductDemandFiveWeeksCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ProductDemandFiveWeeks',
      apiUrl: '$baseUrl/kpi/productDemand5Weeks',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetExternalSuppliersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get External Suppliers',
      apiUrl: '$baseUrl/supplier/external',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditOptionsCall {
  Future<ApiCallResponse> call({
    String? strategy = '',
  }) async {
    final baseUrl = BatteryAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{"strategy":"$strategy"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditOptions',
      apiUrl: '$baseUrl/options/strategies',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Battery API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
