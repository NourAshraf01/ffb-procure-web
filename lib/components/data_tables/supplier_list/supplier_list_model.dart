import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_list_widget.dart' show SupplierListWidget;
import 'package:flutter/material.dart';

class SupplierListModel extends FlutterFlowModel<SupplierListWidget> {
  ///  Local state fields for this component.

  List<SupplierStruct> supplierSearchResults = [];
  void addToSupplierSearchResults(SupplierStruct item) =>
      supplierSearchResults.add(item);
  void removeFromSupplierSearchResults(SupplierStruct item) =>
      supplierSearchResults.remove(item);
  void removeAtIndexFromSupplierSearchResults(int index) =>
      supplierSearchResults.removeAt(index);
  void insertAtIndexInSupplierSearchResults(int index, SupplierStruct item) =>
      supplierSearchResults.insert(index, item);
  void updateSupplierSearchResultsAtIndex(
          int index, Function(SupplierStruct) updateFn) =>
      supplierSearchResults[index] = updateFn(supplierSearchResults[index]);

  List<SupplierStruct> supplierData = [];
  void addToSupplierData(SupplierStruct item) => supplierData.add(item);
  void removeFromSupplierData(SupplierStruct item) => supplierData.remove(item);
  void removeAtIndexFromSupplierData(int index) => supplierData.removeAt(index);
  void insertAtIndexInSupplierData(int index, SupplierStruct item) =>
      supplierData.insert(index, item);
  void updateSupplierDataAtIndex(
          int index, Function(SupplierStruct) updateFn) =>
      supplierData[index] = updateFn(supplierData[index]);

  bool queryFetched = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Suppliers)] action in SupplierList widget.
  ApiCallResponse? supplierQuery;
  // State field(s) for SupplierSearch widget.
  FocusNode? supplierSearchFocusNode;
  TextEditingController? supplierSearchTextController;
  String? Function(BuildContext, String?)?
      supplierSearchTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SupplierStruct>();
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    supplierSearchFocusNode?.dispose();
    supplierSearchTextController?.dispose();

    loadingIndicatorModel.dispose();
  }
}
