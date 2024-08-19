import '/components/data_tables/product_list/product_list_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_widget.dart' show ProductsWidget;
import 'package:flutter/material.dart';

class ProductsModel extends FlutterFlowModel<ProductsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // Model for ProductList component.
  late ProductListModel productListModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    productListModel = createModel(context, () => ProductListModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    productListModel.dispose();
  }
}
