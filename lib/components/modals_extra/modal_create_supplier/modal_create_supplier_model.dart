import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_create_supplier_widget.dart' show ModalCreateSupplierWidget;
import 'package:flutter/material.dart';

class ModalCreateSupplierModel
    extends FlutterFlowModel<ModalCreateSupplierWidget> {
  ///  Local state fields for this component.

  List<dynamic> catalogeItems = [];
  void addToCatalogeItems(dynamic item) => catalogeItems.add(item);
  void removeFromCatalogeItems(dynamic item) => catalogeItems.remove(item);
  void removeAtIndexFromCatalogeItems(int index) =>
      catalogeItems.removeAt(index);
  void insertAtIndexInCatalogeItems(int index, dynamic item) =>
      catalogeItems.insert(index, item);
  void updateCatalogeItemsAtIndex(int index, Function(dynamic) updateFn) =>
      catalogeItems[index] = updateFn(catalogeItems[index]);

  SupplierStruct? supplier;
  void updateSupplierStruct(Function(SupplierStruct) updateFn) {
    updateFn(supplier ??= SupplierStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
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
  // State field(s) for distance widget.
  FocusNode? distanceFocusNode;
  TextEditingController? distanceTextController;
  String? Function(BuildContext, String?)? distanceTextControllerValidator;
  // State field(s) for leadTime widget.
  FocusNode? leadTimeFocusNode;
  TextEditingController? leadTimeTextController;
  String? Function(BuildContext, String?)? leadTimeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Upsert  Supplier)] action in Button widget.
  ApiCallResponse? addSupplier;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    prodEmissionFocusNode?.dispose();
    prodEmissionTextController?.dispose();

    distanceFocusNode?.dispose();
    distanceTextController?.dispose();

    leadTimeFocusNode?.dispose();
    leadTimeTextController?.dispose();
  }
}
