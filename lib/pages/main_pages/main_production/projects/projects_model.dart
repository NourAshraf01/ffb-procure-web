import '/components/data_tables/project_list/project_list_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'projects_widget.dart' show ProjectsWidget;
import 'package:flutter/material.dart';

class ProjectsModel extends FlutterFlowModel<ProjectsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for ProjectList component.
  late ProjectListModel projectListModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    projectListModel = createModel(context, () => ProjectListModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    projectListModel.dispose();
  }
}
