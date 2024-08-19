import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_create_add_product_widget.dart' show ModalCreateAddProductWidget;
import 'package:flutter/material.dart';

class ModalCreateAddProductModel
    extends FlutterFlowModel<ModalCreateAddProductWidget> {
  ///  Local state fields for this component.

  List<ProjectMaterialStruct> projectProducts = [];
  void addToProjectProducts(ProjectMaterialStruct item) =>
      projectProducts.add(item);
  void removeFromProjectProducts(ProjectMaterialStruct item) =>
      projectProducts.remove(item);
  void removeAtIndexFromProjectProducts(int index) =>
      projectProducts.removeAt(index);
  void insertAtIndexInProjectProducts(int index, ProjectMaterialStruct item) =>
      projectProducts.insert(index, item);
  void updateProjectProductsAtIndex(
          int index, Function(ProjectMaterialStruct) updateFn) =>
      projectProducts[index] = updateFn(projectProducts[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Products)] action in modal_createAddProduct widget.
  ApiCallResponse? productsQuery;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
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
