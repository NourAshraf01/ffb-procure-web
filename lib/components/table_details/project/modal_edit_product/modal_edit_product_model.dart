import '/flutter_flow/flutter_flow_util.dart';
import 'modal_edit_product_widget.dart' show ModalEditProductWidget;
import 'package:flutter/material.dart';

class ModalEditProductModel extends FlutterFlowModel<ModalEditProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
