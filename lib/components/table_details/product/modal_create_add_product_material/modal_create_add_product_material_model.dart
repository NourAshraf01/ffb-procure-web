import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_create_add_product_material_widget.dart'
    show ModalCreateAddProductMaterialWidget;
import 'package:flutter/material.dart';

class ModalCreateAddProductMaterialModel
    extends FlutterFlowModel<ModalCreateAddProductMaterialWidget> {
  ///  Local state fields for this component.

  List<ProductMaterialStruct> productMaterials = [];
  void addToProductMaterials(ProductMaterialStruct item) =>
      productMaterials.add(item);
  void removeFromProductMaterials(ProductMaterialStruct item) =>
      productMaterials.remove(item);
  void removeAtIndexFromProductMaterials(int index) =>
      productMaterials.removeAt(index);
  void insertAtIndexInProductMaterials(int index, ProductMaterialStruct item) =>
      productMaterials.insert(index, item);
  void updateProductMaterialsAtIndex(
          int index, Function(ProductMaterialStruct) updateFn) =>
      productMaterials[index] = updateFn(productMaterials[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Materials)] action in modal_createAddProductMaterial widget.
  ApiCallResponse? materialsQuery;
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
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
