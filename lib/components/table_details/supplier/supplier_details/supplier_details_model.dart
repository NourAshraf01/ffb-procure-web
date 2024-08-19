import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'supplier_details_widget.dart' show SupplierDetailsWidget;
import 'package:flutter/material.dart';

class SupplierDetailsModel extends FlutterFlowModel<SupplierDetailsWidget> {
  ///  Local state fields for this component.

  bool isEditable = true;

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

  bool isFetching = false;

  bool canSave = false;

  LatLng? location;

  String? country;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Get Supplier)] action in supplierDetails widget.
  ApiCallResponse? supplierQuery;
  // Stores action output result for [Backend Call - API (Request Data Update)] action in Button widget.
  ApiCallResponse? dataUpdate;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for SupplierName widget.
  FocusNode? supplierNameFocusNode;
  TextEditingController? supplierNameTextController;
  String? Function(BuildContext, String?)? supplierNameTextControllerValidator;
  // State field(s) for SupplierEmail widget.
  FocusNode? supplierEmailFocusNode;
  TextEditingController? supplierEmailTextController;
  String? Function(BuildContext, String?)? supplierEmailTextControllerValidator;
  // State field(s) for ContractAvailability widget.
  bool? contractAvailabilityValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<SupplierMaterialStruct>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<SupplierOrderStruct>();
  // Stores action output result for [Backend Call - API (Upsert  Supplier)] action in Button widget.
  ApiCallResponse? upsertSupplier;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    supplierNameFocusNode?.dispose();
    supplierNameTextController?.dispose();

    supplierEmailFocusNode?.dispose();
    supplierEmailTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
