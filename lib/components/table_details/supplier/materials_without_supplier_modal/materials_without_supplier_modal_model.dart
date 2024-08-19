import '/backend/api_requests/api_calls.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'materials_without_supplier_modal_widget.dart'
    show MaterialsWithoutSupplierModalWidget;
import 'package:flutter/material.dart';

class MaterialsWithoutSupplierModalModel
    extends FlutterFlowModel<MaterialsWithoutSupplierModalWidget> {
  ///  Local state fields for this component.

  List<dynamic> materialsWithoutSupp = [];
  void addToMaterialsWithoutSupp(dynamic item) =>
      materialsWithoutSupp.add(item);
  void removeFromMaterialsWithoutSupp(dynamic item) =>
      materialsWithoutSupp.remove(item);
  void removeAtIndexFromMaterialsWithoutSupp(int index) =>
      materialsWithoutSupp.removeAt(index);
  void insertAtIndexInMaterialsWithoutSupp(int index, dynamic item) =>
      materialsWithoutSupp.insert(index, item);
  void updateMaterialsWithoutSuppAtIndex(
          int index, Function(dynamic) updateFn) =>
      materialsWithoutSupp[index] = updateFn(materialsWithoutSupp[index]);

  bool isFetching = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (material without Supplier)] action in MaterialsWithoutSupplierModal widget.
  ApiCallResponse? materialsWithoutSupplierQuery;
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    loadingIndicatorModel.dispose();
  }
}
