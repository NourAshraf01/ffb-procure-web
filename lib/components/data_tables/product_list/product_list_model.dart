import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_list_widget.dart' show ProductListWidget;
import 'package:flutter/material.dart';

class ProductListModel extends FlutterFlowModel<ProductListWidget> {
  ///  Local state fields for this component.

  List<ProductStruct> productlSearchResults = [];
  void addToProductlSearchResults(ProductStruct item) =>
      productlSearchResults.add(item);
  void removeFromProductlSearchResults(ProductStruct item) =>
      productlSearchResults.remove(item);
  void removeAtIndexFromProductlSearchResults(int index) =>
      productlSearchResults.removeAt(index);
  void insertAtIndexInProductlSearchResults(int index, ProductStruct item) =>
      productlSearchResults.insert(index, item);
  void updateProductlSearchResultsAtIndex(
          int index, Function(ProductStruct) updateFn) =>
      productlSearchResults[index] = updateFn(productlSearchResults[index]);

  List<ProductStruct> productData = [];
  void addToProductData(ProductStruct item) => productData.add(item);
  void removeFromProductData(ProductStruct item) => productData.remove(item);
  void removeAtIndexFromProductData(int index) => productData.removeAt(index);
  void insertAtIndexInProductData(int index, ProductStruct item) =>
      productData.insert(index, item);
  void updateProductDataAtIndex(int index, Function(ProductStruct) updateFn) =>
      productData[index] = updateFn(productData[index]);

  bool queryFetched = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Products)] action in ProductList widget.
  ApiCallResponse? productQuery;
  // State field(s) for ProductSearch widget.
  FocusNode? productSearchFocusNode;
  TextEditingController? productSearchTextController;
  String? Function(BuildContext, String?)? productSearchTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductStruct>();
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel = createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    productSearchFocusNode?.dispose();
    productSearchTextController?.dispose();

    loadingIndicatorModel.dispose();
  }

  /// Action blocks.
  Future rowSelection(BuildContext context) async {}
}
