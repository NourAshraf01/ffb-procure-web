import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_create_new_project_widget.dart' show ModalCreateNewProjectWidget;
import 'package:flutter/material.dart';

class ModalCreateNewProjectModel
    extends FlutterFlowModel<ModalCreateNewProjectWidget> {
  ///  Local state fields for this component.

  List<dynamic> catalogeItems = [];
  void addToCatalogeItems(dynamic item) => catalogeItems.add(item);
  void removeFromCatalogeItems(dynamic item) => catalogeItems.remove(item);
  void removeAtIndexFromCatalogeItems(int index) =>
      catalogeItems.removeAt(index);
  void insertAtIndexInCatalogeItems(int index, dynamic item) =>
      catalogeItems.insert(index, item);
  void updateCatalogeItemsAtIndex(int index, Function(dynamic) updateFn) =>
      catalogeItems[index] = updateFn(catalogeItems[index]);

  int? startWeek;

  int? startYear;

  int? endWeek;

  int? endYear;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for transportation widget.
  int? transportationValue;
  FormFieldController<int>? transportationValueController;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // Stores action output result for [Backend Call - API (Upsert Project)] action in Button widget.
  ApiCallResponse? addProject;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
