import '/backend/api_requests/api_calls.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_edit_material_price_widget.dart'
    show ModalEditMaterialPriceWidget;
import 'package:flutter/material.dart';

class ModalEditMaterialPriceModel
    extends FlutterFlowModel<ModalEditMaterialPriceWidget> {
  ///  Local state fields for this component.

  bool isFetching = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Supplier)] action in modal_editMaterialPrice widget.
  ApiCallResponse? supplierQuery;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    loadingIndicatorModel.dispose();
  }
}
