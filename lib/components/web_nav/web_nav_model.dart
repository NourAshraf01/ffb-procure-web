import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:flutter/material.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  Local state fields for this component.

  bool showProduction = false;

  ///  State fields for stateful widgets in this component.

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;
  // State field(s) for projectRegion widget.
  bool projectRegionHovered1 = false;
  // State field(s) for productRegion widget.
  bool productRegionHovered1 = false;
  // State field(s) for materialRegion widget.
  bool materialRegionHovered1 = false;
  // State field(s) for projectRegion widget.
  bool projectRegionHovered2 = false;
  // State field(s) for productRegion widget.
  bool productRegionHovered2 = false;
  // State field(s) for materialRegion widget.
  bool materialRegionHovered2 = false;

  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
  }
}
