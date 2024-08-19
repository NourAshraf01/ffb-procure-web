import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_map_tab_widget.dart' show SupplierMapTabWidget;
import 'package:flutter/material.dart';

class SupplierMapTabModel extends FlutterFlowModel<SupplierMapTabWidget> {
  ///  Local state fields for this component.

  SupplierStruct? selectedSupplier;
  void updateSelectedSupplierStruct(Function(SupplierStruct) updateFn) {
    updateFn(selectedSupplier ??= SupplierStruct());
  }

  bool fetchingData = false;

  List<CountryRiskStruct> countryRisks = [];
  void addToCountryRisks(CountryRiskStruct item) => countryRisks.add(item);
  void removeFromCountryRisks(CountryRiskStruct item) =>
      countryRisks.remove(item);
  void removeAtIndexFromCountryRisks(int index) => countryRisks.removeAt(index);
  void insertAtIndexInCountryRisks(int index, CountryRiskStruct item) =>
      countryRisks.insert(index, item);
  void updateCountryRisksAtIndex(
          int index, Function(CountryRiskStruct) updateFn) =>
      countryRisks[index] = updateFn(countryRisks[index]);

  List<SupplierStruct> suppliers = [];
  void addToSuppliers(SupplierStruct item) => suppliers.add(item);
  void removeFromSuppliers(SupplierStruct item) => suppliers.remove(item);
  void removeAtIndexFromSuppliers(int index) => suppliers.removeAt(index);
  void insertAtIndexInSuppliers(int index, SupplierStruct item) =>
      suppliers.insert(index, item);
  void updateSuppliersAtIndex(int index, Function(SupplierStruct) updateFn) =>
      suppliers[index] = updateFn(suppliers[index]);

  List<SupplierStruct> filteredSuppliers = [];
  void addToFilteredSuppliers(SupplierStruct item) =>
      filteredSuppliers.add(item);
  void removeFromFilteredSuppliers(SupplierStruct item) =>
      filteredSuppliers.remove(item);
  void removeAtIndexFromFilteredSuppliers(int index) =>
      filteredSuppliers.removeAt(index);
  void insertAtIndexInFilteredSuppliers(int index, SupplierStruct item) =>
      filteredSuppliers.insert(index, item);
  void updateFilteredSuppliersAtIndex(
          int index, Function(SupplierStruct) updateFn) =>
      filteredSuppliers[index] = updateFn(filteredSuppliers[index]);

  bool searchSupplierClicked = false;

  SupplierDetailStruct? selectedSupplierDetail;
  void updateSelectedSupplierDetailStruct(
      Function(SupplierDetailStruct) updateFn) {
    updateFn(selectedSupplierDetail ??= SupplierDetailStruct());
  }

  bool fetchingMaterials = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Suppliers)] action in SupplierMapTab widget.
  ApiCallResponse? suppliersList;
  // Stores action output result for [Backend Call - API (Show Country Risk)] action in SupplierMapTab widget.
  ApiCallResponse? countriesQuery;
  // Stores action output result for [Backend Call - API (Get Materials)] action in SupplierMapTab widget.
  ApiCallResponse? materialsQuery;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Get Suppliers)] action in IconButton widget.
  ApiCallResponse? suppliersFilterQuery;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (Get Supplier)] action in Tab widget.
  ApiCallResponse? selectedSupplierDetailApi;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SupplierMaterialStruct>();
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel1;
  // Model for LoadingIndicator component.
  late LoadingIndicatorModel loadingIndicatorModel2;

  @override
  void initState(BuildContext context) {
    loadingIndicatorModel1 =
        createModel(context, () => LoadingIndicatorModel());
    loadingIndicatorModel2 =
        createModel(context, () => LoadingIndicatorModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    loadingIndicatorModel1.dispose();
    loadingIndicatorModel2.dispose();
  }
}
