import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_order_management_copy_widget.dart'
    show MainOrderManagementCopyWidget;
import 'package:flutter/material.dart';

class MainOrderManagementCopyModel
    extends FlutterFlowModel<MainOrderManagementCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
