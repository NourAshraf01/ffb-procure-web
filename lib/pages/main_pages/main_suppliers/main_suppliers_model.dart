import '/backend/schema/structs/index.dart';
import '/components/data_tables/supplier_list/supplier_list_widget.dart';
import '/components/supplier_map_tab_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_suppliers_widget.dart' show MainSuppliersWidget;
import 'package:flutter/material.dart';

class MainSuppliersModel extends FlutterFlowModel<MainSuppliersWidget> {
  ///  Local state fields for this page.

  List<SupplierStruct> listOfSuppliers = [];
  void addToListOfSuppliers(SupplierStruct item) => listOfSuppliers.add(item);
  void removeFromListOfSuppliers(SupplierStruct item) =>
      listOfSuppliers.remove(item);
  void removeAtIndexFromListOfSuppliers(int index) =>
      listOfSuppliers.removeAt(index);
  void insertAtIndexInListOfSuppliers(int index, SupplierStruct item) =>
      listOfSuppliers.insert(index, item);
  void updateListOfSuppliersAtIndex(
          int index, Function(SupplierStruct) updateFn) =>
      listOfSuppliers[index] = updateFn(listOfSuppliers[index]);

  List<SupplierStruct> searchedSuppliers = [];
  void addToSearchedSuppliers(SupplierStruct item) =>
      searchedSuppliers.add(item);
  void removeFromSearchedSuppliers(SupplierStruct item) =>
      searchedSuppliers.remove(item);
  void removeAtIndexFromSearchedSuppliers(int index) =>
      searchedSuppliers.removeAt(index);
  void insertAtIndexInSearchedSuppliers(int index, SupplierStruct item) =>
      searchedSuppliers.insert(index, item);
  void updateSearchedSuppliersAtIndex(
          int index, Function(SupplierStruct) updateFn) =>
      searchedSuppliers[index] = updateFn(searchedSuppliers[index]);

  bool? isMapView = false;

  bool isSupplierSelected = false;

  SupplierStruct? selectedSupplier;
  void updateSelectedSupplierStruct(Function(SupplierStruct) updateFn) {
    updateFn(selectedSupplier ??= SupplierStruct());
  }

  bool fetchingSuppliers = false;

  ///  State fields for stateful widgets in this page.

  // Model for webNav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for SupplierList component.
  late SupplierListModel supplierListModel;
  // Model for SupplierMapTab component.
  late SupplierMapTabModel supplierMapTabModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
    supplierListModel = createModel(context, () => SupplierListModel());
    supplierMapTabModel = createModel(context, () => SupplierMapTabModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
    tabBarController?.dispose();
    supplierListModel.dispose();
    supplierMapTabModel.dispose();
  }
}
