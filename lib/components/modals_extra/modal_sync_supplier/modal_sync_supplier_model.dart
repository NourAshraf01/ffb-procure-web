import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_sync_supplier_widget.dart' show ModalSyncSupplierWidget;
import 'package:flutter/material.dart';

class ModalSyncSupplierModel extends FlutterFlowModel<ModalSyncSupplierWidget> {
  ///  Local state fields for this component.

  bool isFetching = false;

  List<ExternalSupplierStruct> externalSuppliers = [];
  void addToExternalSuppliers(ExternalSupplierStruct item) =>
      externalSuppliers.add(item);
  void removeFromExternalSuppliers(ExternalSupplierStruct item) =>
      externalSuppliers.remove(item);
  void removeAtIndexFromExternalSuppliers(int index) =>
      externalSuppliers.removeAt(index);
  void insertAtIndexInExternalSuppliers(
          int index, ExternalSupplierStruct item) =>
      externalSuppliers.insert(index, item);
  void updateExternalSuppliersAtIndex(
          int index, Function(ExternalSupplierStruct) updateFn) =>
      externalSuppliers[index] = updateFn(externalSuppliers[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get External Suppliers)] action in modal_syncSupplier widget.
  ApiCallResponse? externalSuppliersQuery;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    loadingIndicatorModel.dispose();
  }
}
