import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  Local state fields for this component.

  bool isEditable = true;

  bool canSave = false;

  bool isFetching = false;

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

  // Stores action output result for [Backend Call - API (Get Product)] action in productDetails widget.
  ApiCallResponse? productQuery;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode1;
  TextEditingController? supplierNameTextController1;
  String? Function(BuildContext, String?)? supplierNameTextController1Validator;
  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode2;
  TextEditingController? supplierNameTextController2;
  String? Function(BuildContext, String?)? supplierNameTextController2Validator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<ProductMaterialStruct>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<ExternalProductionStruct>();
  // Stores action output result for [Backend Call - API (Update Product)] action in Button widget.
  ApiCallResponse? upsertProduct;
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    supplierNameFocusNode1?.dispose();
    supplierNameTextController1?.dispose();

    supplierNameFocusNode2?.dispose();
    supplierNameTextController2?.dispose();

    loadingIndicatorModel.dispose();
  }
}
