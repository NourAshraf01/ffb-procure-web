import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_order_management_widget.dart' show MainOrderManagementWidget;
import 'package:flutter/material.dart';

class MainOrderManagementModel
    extends FlutterFlowModel<MainOrderManagementWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
