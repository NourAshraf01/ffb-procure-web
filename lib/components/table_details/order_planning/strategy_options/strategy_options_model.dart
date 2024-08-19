import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'strategy_options_widget.dart' show StrategyOptionsWidget;
import 'package:flutter/material.dart';

class StrategyOptionsModel extends FlutterFlowModel<StrategyOptionsWidget> {
  ///  Local state fields for this component.

  bool isEditable = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode1;
  TextEditingController? supplierNameTextController1;
  String? Function(BuildContext, String?)? supplierNameTextController1Validator;
  // State field(s) for SupplierEmail widget.
  FocusNode? supplierEmailFocusNode1;
  TextEditingController? supplierEmailTextController1;
  String? Function(BuildContext, String?)?
      supplierEmailTextController1Validator;
  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode2;
  TextEditingController? supplierNameTextController2;
  String? Function(BuildContext, String?)? supplierNameTextController2Validator;
  // State field(s) for SupplierEmail widget.
  FocusNode? supplierEmailFocusNode2;
  TextEditingController? supplierEmailTextController2;
  String? Function(BuildContext, String?)?
      supplierEmailTextController2Validator;
  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode3;
  TextEditingController? supplierNameTextController3;
  String? Function(BuildContext, String?)? supplierNameTextController3Validator;
  // State field(s) for SupplierEmail widget.
  FocusNode? supplierEmailFocusNode3;
  TextEditingController? supplierEmailTextController3;
  String? Function(BuildContext, String?)?
      supplierEmailTextController3Validator;
  // Stores action output result for [Backend Call - API (Upsert  Supplier)] action in Button widget.
  ApiCallResponse? apiResultro5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    supplierNameFocusNode1?.dispose();
    supplierNameTextController1?.dispose();

    supplierEmailFocusNode1?.dispose();
    supplierEmailTextController1?.dispose();

    supplierNameFocusNode2?.dispose();
    supplierNameTextController2?.dispose();

    supplierEmailFocusNode2?.dispose();
    supplierEmailTextController2?.dispose();

    supplierNameFocusNode3?.dispose();
    supplierNameTextController3?.dispose();

    supplierEmailFocusNode3?.dispose();
    supplierEmailTextController3?.dispose();
  }
}
