import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'supplier_detail_widget.dart' show SupplierDetailWidget;
import 'package:flutter/material.dart';

class SupplierDetailModel extends FlutterFlowModel<SupplierDetailWidget> {
  ///  Local state fields for this component.

  bool isSupplierDataLoading = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Supplier)] action in SupplierDetail widget.
  ApiCallResponse? supplierDat;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
