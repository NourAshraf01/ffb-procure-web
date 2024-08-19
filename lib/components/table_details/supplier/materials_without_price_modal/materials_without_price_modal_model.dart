import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'materials_without_price_modal_widget.dart'
    show MaterialsWithoutPriceModalWidget;
import 'package:flutter/material.dart';

class MaterialsWithoutPriceModalModel
    extends FlutterFlowModel<MaterialsWithoutPriceModalWidget> {
  ///  Local state fields for this component.

  List<dynamic> materialsWithoutPrice = [];
  void addToMaterialsWithoutPrice(dynamic item) =>
      materialsWithoutPrice.add(item);
  void removeFromMaterialsWithoutPrice(dynamic item) =>
      materialsWithoutPrice.remove(item);
  void removeAtIndexFromMaterialsWithoutPrice(int index) =>
      materialsWithoutPrice.removeAt(index);
  void insertAtIndexInMaterialsWithoutPrice(int index, dynamic item) =>
      materialsWithoutPrice.insert(index, item);
  void updateMaterialsWithoutPriceAtIndex(
          int index, Function(dynamic) updateFn) =>
      materialsWithoutPrice[index] = updateFn(materialsWithoutPrice[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Upsert  Supplier)] action in edit widget.
  ApiCallResponse? updateSupplierQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
