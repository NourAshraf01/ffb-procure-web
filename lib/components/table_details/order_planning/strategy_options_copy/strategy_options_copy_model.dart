import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'strategy_options_copy_widget.dart' show StrategyOptionsCopyWidget;
import 'package:flutter/material.dart';

class StrategyOptionsCopyModel
    extends FlutterFlowModel<StrategyOptionsCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (EditOptions)] action in Button widget.
  ApiCallResponse? editOptions;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
