import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_link_material_to_supplier_widget.dart'
    show ModalLinkMaterialToSupplierWidget;
import 'package:flutter/material.dart';

class ModalLinkMaterialToSupplierModel
    extends FlutterFlowModel<ModalLinkMaterialToSupplierWidget> {
  ///  Local state fields for this component.

  List<SupplierMaterialStruct> newMaterials = [];
  void addToNewMaterials(SupplierMaterialStruct item) => newMaterials.add(item);
  void removeFromNewMaterials(SupplierMaterialStruct item) =>
      newMaterials.remove(item);
  void removeAtIndexFromNewMaterials(int index) => newMaterials.removeAt(index);
  void insertAtIndexInNewMaterials(int index, SupplierMaterialStruct item) =>
      newMaterials.insert(index, item);
  void updateNewMaterialsAtIndex(
          int index, Function(SupplierMaterialStruct) updateFn) =>
      newMaterials[index] = updateFn(newMaterials[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for strategy widget.
  int? strategyValue;
  FormFieldController<int>? strategyValueController;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for emissions widget.
  FocusNode? emissionsFocusNode;
  TextEditingController? emissionsTextController;
  String? Function(BuildContext, String?)? emissionsTextControllerValidator;
  // State field(s) for leadTime widget.
  FocusNode? leadTimeFocusNode;
  TextEditingController? leadTimeTextController;
  String? Function(BuildContext, String?)? leadTimeTextControllerValidator;
  // State field(s) for Distance widget.
  FocusNode? distanceFocusNode;
  TextEditingController? distanceTextController;
  String? Function(BuildContext, String?)? distanceTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Supplier)] action in Button widget.
  ApiCallResponse? getSupplierDetailQuery;
  // Stores action output result for [Backend Call - API (Upsert  Supplier)] action in Button widget.
  ApiCallResponse? upsertSupplier;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    emissionsFocusNode?.dispose();
    emissionsTextController?.dispose();

    leadTimeFocusNode?.dispose();
    leadTimeTextController?.dispose();

    distanceFocusNode?.dispose();
    distanceTextController?.dispose();
  }
}
