import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_create_add_material_widget.dart'
    show ModalCreateAddMaterialWidget;
import 'package:flutter/material.dart';

class ModalCreateAddMaterialModel
    extends FlutterFlowModel<ModalCreateAddMaterialWidget> {
  ///  Local state fields for this component.

  List<SupplierMaterialStruct> supplierMaterials = [];
  void addToSupplierMaterials(SupplierMaterialStruct item) =>
      supplierMaterials.add(item);
  void removeFromSupplierMaterials(SupplierMaterialStruct item) =>
      supplierMaterials.remove(item);
  void removeAtIndexFromSupplierMaterials(int index) =>
      supplierMaterials.removeAt(index);
  void insertAtIndexInSupplierMaterials(
          int index, SupplierMaterialStruct item) =>
      supplierMaterials.insert(index, item);
  void updateSupplierMaterialsAtIndex(
          int index, Function(SupplierMaterialStruct) updateFn) =>
      supplierMaterials[index] = updateFn(supplierMaterials[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Materials)] action in modal_createAddMaterial widget.
  ApiCallResponse? materialsQuery;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for prodEmission widget.
  FocusNode? prodEmissionFocusNode;
  TextEditingController? prodEmissionTextController;
  String? Function(BuildContext, String?)? prodEmissionTextControllerValidator;
  // State field(s) for transEmission widget.
  FocusNode? transEmissionFocusNode;
  TextEditingController? transEmissionTextController;
  String? Function(BuildContext, String?)? transEmissionTextControllerValidator;
  // State field(s) for lead_time widget.
  FocusNode? leadTimeFocusNode;
  TextEditingController? leadTimeTextController;
  String? Function(BuildContext, String?)? leadTimeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    priceFocusNode?.dispose();
    priceTextController?.dispose();

    prodEmissionFocusNode?.dispose();
    prodEmissionTextController?.dispose();

    transEmissionFocusNode?.dispose();
    transEmissionTextController?.dispose();

    leadTimeFocusNode?.dispose();
    leadTimeTextController?.dispose();
  }
}
