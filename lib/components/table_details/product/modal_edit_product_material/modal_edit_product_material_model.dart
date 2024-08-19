import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_edit_product_material_widget.dart'
    show ModalEditProductMaterialWidget;
import 'package:flutter/material.dart';

class ModalEditProductMaterialModel
    extends FlutterFlowModel<ModalEditProductMaterialWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for transportation widget.
  String? transportationValue;
  FormFieldController<String>? transportationValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
