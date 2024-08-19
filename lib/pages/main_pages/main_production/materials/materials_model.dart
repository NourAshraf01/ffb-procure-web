import '/components/data_tables/material_list/material_list_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'materials_widget.dart' show MaterialsWidget;
import 'package:flutter/material.dart';

class MaterialsModel extends FlutterFlowModel<MaterialsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for MaterialList component.
  late MaterialListModel materialListModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    materialListModel = createModel(context, () => MaterialListModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    materialListModel.dispose();
  }
}
