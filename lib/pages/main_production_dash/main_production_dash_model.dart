import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_production_dash_widget.dart' show MainProductionDashWidget;
import 'package:flutter/material.dart';

class MainProductionDashModel
    extends FlutterFlowModel<MainProductionDashWidget> {
  ///  Local state fields for this page.

  List<String> emptyList = [];
  void addToEmptyList(String item) => emptyList.add(item);
  void removeFromEmptyList(String item) => emptyList.remove(item);
  void removeAtIndexFromEmptyList(int index) => emptyList.removeAt(index);
  void insertAtIndexInEmptyList(int index, String item) =>
      emptyList.insert(index, item);
  void updateEmptyListAtIndex(int index, Function(String) updateFn) =>
      emptyList[index] = updateFn(emptyList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
