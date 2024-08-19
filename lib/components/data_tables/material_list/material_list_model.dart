import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'material_list_widget.dart' show MaterialListWidget;
import 'package:flutter/material.dart';

class MaterialListModel extends FlutterFlowModel<MaterialListWidget> {
  ///  Local state fields for this component.

  List<MaterialStruct> materialSearchResults = [];
  void addToMaterialSearchResults(MaterialStruct item) =>
      materialSearchResults.add(item);
  void removeFromMaterialSearchResults(MaterialStruct item) =>
      materialSearchResults.remove(item);
  void removeAtIndexFromMaterialSearchResults(int index) =>
      materialSearchResults.removeAt(index);
  void insertAtIndexInMaterialSearchResults(int index, MaterialStruct item) =>
      materialSearchResults.insert(index, item);
  void updateMaterialSearchResultsAtIndex(
          int index, Function(MaterialStruct) updateFn) =>
      materialSearchResults[index] = updateFn(materialSearchResults[index]);

  List<MaterialStruct> materialData = [];
  void addToMaterialData(MaterialStruct item) => materialData.add(item);
  void removeFromMaterialData(MaterialStruct item) => materialData.remove(item);
  void removeAtIndexFromMaterialData(int index) => materialData.removeAt(index);
  void insertAtIndexInMaterialData(int index, MaterialStruct item) =>
      materialData.insert(index, item);
  void updateMaterialDataAtIndex(
          int index, Function(MaterialStruct) updateFn) =>
      materialData[index] = updateFn(materialData[index]);

  bool queryFetched = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Materials)] action in MaterialList widget.
  ApiCallResponse? materialQuery;
  // State field(s) for MaterialSearch widget.
  FocusNode? materialSearchFocusNode;
  TextEditingController? materialSearchTextController;
  String? Function(BuildContext, String?)?
      materialSearchTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<MaterialStruct>();
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    materialSearchFocusNode?.dispose();
    materialSearchTextController?.dispose();

    loadingIndicatorModel.dispose();
  }

  /// Action blocks.
  Future rowSelection(BuildContext context) async {}
}
