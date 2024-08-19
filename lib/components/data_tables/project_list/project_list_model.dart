import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'project_list_widget.dart' show ProjectListWidget;
import 'package:flutter/material.dart';

class ProjectListModel extends FlutterFlowModel<ProjectListWidget> {
  ///  Local state fields for this component.

  List<ProjectStruct> projectlSearchResults = [];
  void addToProjectlSearchResults(ProjectStruct item) =>
      projectlSearchResults.add(item);
  void removeFromProjectlSearchResults(ProjectStruct item) =>
      projectlSearchResults.remove(item);
  void removeAtIndexFromProjectlSearchResults(int index) =>
      projectlSearchResults.removeAt(index);
  void insertAtIndexInProjectlSearchResults(int index, ProjectStruct item) =>
      projectlSearchResults.insert(index, item);
  void updateProjectlSearchResultsAtIndex(
          int index, Function(ProjectStruct) updateFn) =>
      projectlSearchResults[index] = updateFn(projectlSearchResults[index]);

  List<ProjectStruct> projectData = [];
  void addToProjectData(ProjectStruct item) => projectData.add(item);
  void removeFromProjectData(ProjectStruct item) => projectData.remove(item);
  void removeAtIndexFromProjectData(int index) => projectData.removeAt(index);
  void insertAtIndexInProjectData(int index, ProjectStruct item) =>
      projectData.insert(index, item);
  void updateProjectDataAtIndex(int index, Function(ProjectStruct) updateFn) =>
      projectData[index] = updateFn(projectData[index]);

  bool queryFetched = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Projects)] action in ProjectList widget.
  ApiCallResponse? projectQuery;
  // State field(s) for MaterialSearch widget.
  FocusNode? materialSearchFocusNode;
  TextEditingController? materialSearchTextController;
  String? Function(BuildContext, String?)?
      materialSearchTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProjectStruct>();
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
