import '/flutter_flow/flutter_flow_util.dart';
import 'modal_edit_material_widget.dart' show ModalEditMaterialWidget;
import 'package:flutter/material.dart';

class ModalEditMaterialModel extends FlutterFlowModel<ModalEditMaterialWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for lead_time widget.
  FocusNode? leadTimeFocusNode;
  TextEditingController? leadTimeTextController;
  String? Function(BuildContext, String?)? leadTimeTextControllerValidator;
  // State field(s) for prodEmission widget.
  FocusNode? prodEmissionFocusNode;
  TextEditingController? prodEmissionTextController;
  String? Function(BuildContext, String?)? prodEmissionTextControllerValidator;
  // State field(s) for transEmission widget.
  FocusNode? transEmissionFocusNode;
  TextEditingController? transEmissionTextController;
  String? Function(BuildContext, String?)? transEmissionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    leadTimeFocusNode?.dispose();
    leadTimeTextController?.dispose();

    prodEmissionFocusNode?.dispose();
    prodEmissionTextController?.dispose();

    transEmissionFocusNode?.dispose();
    transEmissionTextController?.dispose();
  }
}
