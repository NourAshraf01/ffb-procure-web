import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<DateTime> timeFilterChart(String? timeFilter) {
  // make a function to return a daily list, weekly list or monthly list for a linechart
  List<DateTime> result = [];
  DateTime now = DateTime.now();
  switch (timeFilter) {
    case 'daily':
      for (int i = 0; i < 24; i++) {
        result.add(DateTime(now.year, now.month, now.day, i));
      }
      break;
    case 'weekly':
      for (int i = 0; i < 7; i++) {
        result.add(now.subtract(Duration(days: i)));
      }
      break;
    case 'monthly':
      for (int i = 0; i < 30; i++) {
        result.add(now.subtract(Duration(days: i)));
      }
      break;
  }
  return result;
}

dynamic addProductItem(
  String description,
  String specification,
  double amount,
  int id,
) {
  return {
    "id": id,
    "description": description,
    "specification": specification,
    "amount": amount
  };
}

dynamic addMaterialItem(
  String name,
  double amount,
  int id,
) {
  return {"id": id, "name": name, "amount": amount};
}

double? getLongFromGooglePlaceCopy(FFPlace? selectedPlace) {
  return selectedPlace?.latLng.longitude;
}

bool showSupplierResults(
  String textSearchFor,
  String textSearchIn,
) {
  return textSearchIn.contains(textSearchFor);
}

bool showSupplierDetails(String? supplierSelectedState) {
  return (supplierSelectedState != null);
}

double? getLatGooglePlace(FFPlace? selectedPlace) {
  return selectedPlace?.latLng.latitude;
}

String getProductSpecByID(
  List<dynamic> data,
  int id,
) {
  for (var i = 0; i < data.length; i++) {
    if (id == data[i]["id"]) {
      return data[i]["specification"];
    }
  }
  return "";
}

List<String> getProductsFullName(List<ProductStruct> products) {
  List<String> fullNames = [];
  for (var i = 0; i < products.length; i++) {
    fullNames.add(products[i].description + ', ' + products[i].specification);
  }
  return fullNames;
}

List<LatLng>? newCustomFunction(List<SupplierStruct>? suppliers) {
  // Create a list of latlng from a list of suppliers with lat and long in their fields structure
  if (suppliers == null) return null;
  final List<LatLng> latLngList = [];
  for (final supplier in suppliers) {
    latLngList.add(LatLng(supplier.lat, supplier.long));
  }
  return latLngList;
}

String getProductDescByID(
  List<dynamic> data,
  int id,
) {
  for (var i = 0; i < data.length; i++) {
    if (id == data[i]["id"]) {
      return data[i]["description"];
    }
  }
  return "";
}

dynamic addCatalogeItem(
  String materialName,
  double materialPrice,
  int id,
  double? materialEmissions,
  double? distance,
  double? leadTime,
) {
  return {
    "id": id,
    "name": materialName,
    "price": materialPrice,
    "co2_emissions": materialEmissions,
    "distance": distance,
    "lead_time": leadTime
  };
}

List<String> getProjectProductsFullName(List<ProjectMaterialStruct> products) {
  List<String> fullNames = [];
  for (var i = 0; i < products.length; i++) {
    fullNames.add(products[i].description + ', ' + products[i].specification);
  }
  return fullNames;
}

List<dynamic> searchTable(
  List<dynamic> dataList,
  String searchString,
) {
  // Function that filters an array of json based on the searchString parameter
  return dataList.where((data) {
    final jsonString = json.encode(data);
    return jsonString.toLowerCase().contains(searchString.toLowerCase());
  }).toList();
}

List<String> getExternalSuppliersLabels(
    List<ExternalSupplierStruct> externalSuppliers) {
  List<String> fullNames = [];
  for (var i = 0; i < externalSuppliers.length; i++) {
    fullNames.add(externalSuppliers[i].name + ', #' + externalSuppliers[i].id);
  }
  return fullNames;
}

List<dynamic> getComplement(
  List<dynamic> list1,
  List<dynamic> list2,
) {
  // function returning complement of list1 and list2 based on id of the jsons in the list
  List<dynamic> complementList = [];

  for (var item1 in list1) {
    bool found = false;
    for (var item2 in list2) {
      if (item1['id'] == item2['id']) {
        found = true;
        break;
      }
    }
    if (!found) {
      complementList.add(item1);
    }
  }

  return complementList;
}

LatLng? supplierLatLng(SupplierStruct supplier) {
  // get lat lng from supplier
  if (supplier.lat != null && supplier.long != null) {
    return LatLng(supplier.lat!, supplier.long!);
  } else {
    return null;
  }
}

String getProductFullName(ProductStruct product) {
  return product.description + ', ' + product.specification;
}

List<OptimalOrderSummaryStruct> getOptimalOrderSummary(
    List<OptimalOrdersStruct> orderSummary) {
  // Iterate over optimalOrders list and for each index get the total price of data, avg lead_times and total emissions
  List<OptimalOrderSummaryStruct> result = [];

  for (int i = 0; i < orderSummary.length; i++) {
    double totalPrice = 0;
    double totalLeadTime = 0;
    double totalEmissions = 0;

    for (int j = 0; j < orderSummary[i].data.length; j++) {
      totalPrice +=
          (orderSummary[i].data[j].price * orderSummary[i].data[j].minOrder);
      totalLeadTime += orderSummary[i].data[j].leadTime;
      // totalEmissions += orderSummary[i].data[j].emissions;
    }

    double avgLeadTime = totalLeadTime / orderSummary[i].data.length;

    result.add(OptimalOrderSummaryStruct(
        week: orderSummary[i].week,
        totalPrice: totalPrice,
        totalEmissions: totalEmissions,
        avgLeadTime: avgLeadTime));
  }

  return result;
}

String getNameFromListByID(
  List<dynamic> data,
  int id,
) {
  for (var i = 0; i < data.length; i++) {
    if (id == data[i]["id"]) {
      return data[i]["name"];
    }
  }
  return "";
}

SupplierDetailStruct copySupplierDataWithNewMaterialPrice(
  SupplierDetailStruct supplier,
  int materialId,
  double newPrice,
) {
  Iterable<SupplierMaterialStruct> newMaterials =
      supplier.materials.map((material) {
    if (material.id == materialId) {
      material.price = newPrice;
    }
    return material;
  });

  SupplierDetailStruct newSupplier = supplier;
  newSupplier.materials = newMaterials.toList();

  return newSupplier;
}

bool? isEven(int? inputInteger) {
  // null safety
  inputInteger = inputInteger ?? 0;

  // create function to determine if inputInteger is an even number

  return inputInteger % 2 == 0;
}
