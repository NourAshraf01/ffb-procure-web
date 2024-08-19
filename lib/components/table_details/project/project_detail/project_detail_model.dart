import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'project_detail_widget.dart' show ProjectDetailWidget;
import 'package:flutter/material.dart';

class ProjectDetailModel extends FlutterFlowModel<ProjectDetailWidget> {
  ///  Local state fields for this component.

  bool isEditable = true;

  int? startWeek;

  int? startYear;

  int? endWeek;

  int? endYear;

  bool canSave = false;

  bool isFetching = false;

  List<ProjectMaterialStruct> projectProducts = [];
  void addToProjectProducts(ProjectMaterialStruct item) =>
      projectProducts.add(item);
  void removeFromProjectProducts(ProjectMaterialStruct item) =>
      projectProducts.remove(item);
  void removeAtIndexFromProjectProducts(int index) =>
      projectProducts.removeAt(index);
  void insertAtIndexInProjectProducts(int index, ProjectMaterialStruct item) =>
      projectProducts.insert(index, item);
  void updateProjectProductsAtIndex(
          int index, Function(ProjectMaterialStruct) updateFn) =>
      projectProducts[index] = updateFn(projectProducts[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Project)] action in projectDetail widget.
  ApiCallResponse? projectQuery;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode;
  TextEditingController? supplierNameTextController;
  String? Function(BuildContext, String?)? supplierNameTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProjectMaterialStruct>();
  // Stores action output result for [Backend Call - API (Upsert Project)] action in Button widget.
  ApiCallResponse? upsertProject;
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    supplierNameFocusNode?.dispose();
    supplierNameTextController?.dispose();

    loadingIndicatorModel.dispose();
  }
}
