import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'modal_create_new_project_model.dart';
export 'modal_create_new_project_model.dart';

class ModalCreateNewProjectWidget extends StatefulWidget {
  const ModalCreateNewProjectWidget({super.key});

  @override
  State<ModalCreateNewProjectWidget> createState() =>
      _ModalCreateNewProjectWidgetState();
}

class _ModalCreateNewProjectWidgetState
    extends State<ModalCreateNewProjectWidget> with TickerProviderStateMixin {
  late ModalCreateNewProjectModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalCreateNewProjectModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.yourNameTextController ??= TextEditingController();
    _model.yourNameFocusNode ??= FocusNode();

    _model.priceTextController ??= TextEditingController();
    _model.priceFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 100.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 16.0, 16.0),
            child: Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 670.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 12.0,
                    color: Color(0x1E000000),
                    offset: Offset(
                      0.0,
                      5.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: FutureBuilder<ApiCallResponse>(
                future: BatteryAPIGroup.getProductsCall.call(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitFoldingCube(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  final columnGetProductsResponse = snapshot.data!;

                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 16.0, 0.0, 0.0),
                        child: Text(
                          'Add new project',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 0.0),
                        child: Text(
                          'Edit the details of the project below.',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 600.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                                unselectedLabelStyle: const TextStyle(),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).primary,
                                padding: const EdgeInsets.all(4.0),
                                tabs: const [
                                  Tab(
                                    text: 'Project Data',
                                  ),
                                  Tab(
                                    text: 'Products',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: TextFormField(
                                            controller:
                                                _model.yourNameTextController,
                                            focusNode: _model.yourNameFocusNode,
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Partner Name',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              contentPadding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 24.0,
                                                          20.0, 24.0),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                            cursorColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            validator: _model
                                                .yourNameTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Start Week',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Container(
                                                    height: 310.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: custom_widgets
                                                          .WeekPicker(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        week: null,
                                                        isEditable: false,
                                                        year: null,
                                                        minWeek: null,
                                                        onDateSelected:
                                                            (selectedWeek,
                                                                selectedYear) async {
                                                          _model.startWeek =
                                                              selectedWeek;
                                                          _model.startYear =
                                                              selectedYear;
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 10.0)),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'End Week',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Container(
                                                    height: 310.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: custom_widgets
                                                          .WeekPicker(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        week: null,
                                                        isEditable: false,
                                                        year: null,
                                                        minWeek:
                                                            _model.startWeek,
                                                        minYear:
                                                            _model.startYear,
                                                        onDateSelected:
                                                            (selectedWeek,
                                                                selectedYear) async {
                                                          _model.endWeek =
                                                              selectedWeek;
                                                          _model.endYear =
                                                              selectedYear;
                                                          setState(() {});
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 10.0)),
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 20.0)),
                                        ),
                                      ].addToEnd(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: FlutterFlowDropDown<int>(
                                                  controller: _model
                                                          .transportationValueController ??=
                                                      FormFieldController<int>(
                                                    _model.transportationValue ??=
                                                        -1,
                                                  ),
                                                  options: List<
                                                      int>.from((columnGetProductsResponse
                                                              .jsonBody
                                                              .toList()
                                                              .map<ProductStruct?>(
                                                                  ProductStruct
                                                                      .maybeFromMap)
                                                              .toList()
                                                          as Iterable<
                                                              ProductStruct?>)
                                                      .withoutNulls
                                                      .map((e) => e.id)
                                                      .toList()),
                                                  optionLabels: functions.getProductsFullName(
                                                      (columnGetProductsResponse
                                                                  .jsonBody
                                                                  .toList()
                                                                  .map<ProductStruct?>(
                                                                      ProductStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  ProductStruct?>)
                                                          .withoutNulls
                                                          .toList()),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .transportationValue =
                                                          val),
                                                  width: 200.0,
                                                  height: 56.0,
                                                  maxHeight: 400.0,
                                                  searchHintTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  searchTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Please select product...',
                                                  searchHintText:
                                                      'Search for a product...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 2.0,
                                                  borderRadius: 12.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: true,
                                                  isMultiSelect: false,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 150.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .priceTextController,
                                                  focusNode:
                                                      _model.priceFocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Amount',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  minLines: 1,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  validator: _model
                                                      .priceTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp('[0-9]'))
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: FFButtonWidget(
                                              onPressed: ((_model.priceTextController
                                                                  .text ==
                                                              '') &&
                                                      (_model.transportationValue ==
                                                          null))
                                                  ? null
                                                  : () async {
                                                      _model.addToCatalogeItems(functions.addProductItem(
                                                          (columnGetProductsResponse
                                                                      .jsonBody
                                                                      .toList()
                                                                      .map<ProductStruct?>(
                                                                          ProductStruct
                                                                              .maybeFromMap)
                                                                      .toList()
                                                                  as Iterable<
                                                                      ProductStruct?>)
                                                              .withoutNulls
                                                              .where((e) =>
                                                                  e.id ==
                                                                  _model
                                                                      .transportationValue)
                                                              .toList()
                                                              .first
                                                              .description,
                                                          (columnGetProductsResponse
                                                                  .jsonBody
                                                                  .toList()
                                                                  .map<ProductStruct?>(ProductStruct.maybeFromMap)
                                                                  .toList() as Iterable<ProductStruct?>)
                                                              .withoutNulls
                                                              .where((e) => e.id == _model.transportationValue)
                                                              .toList()
                                                              .first
                                                              .specification,
                                                          double.parse(_model.priceTextController.text),
                                                          _model.transportationValue!)!);
                                                      setState(() {});
                                                      setState(() {
                                                        _model
                                                            .priceTextController
                                                            ?.clear();
                                                      });
                                                      setState(() {
                                                        _model
                                                            .transportationValueController
                                                            ?.reset();
                                                      });
                                                    },
                                              text: 'Add',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(8.0),
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          flex: 4,
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Text(
                                                              'Description',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                        ))
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              'Specification',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        Expanded(
                                                          child: Text(
                                                            'Amount',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            'Actions',
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  final catalogeEntry = _model
                                                      .catalogeItems
                                                      .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        catalogeEntry.length,
                                                    itemBuilder: (context,
                                                        catalogeEntryIndex) {
                                                      final catalogeEntryItem =
                                                          catalogeEntry[
                                                              catalogeEntryIndex];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    1.0),
                                                        child: Container(
                                                          width: 100.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 0.0,
                                                                color: Color(
                                                                    0xFFF1F4F8),
                                                                offset: Offset(
                                                                  0.0,
                                                                  1.0,
                                                                ),
                                                              )
                                                            ],
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  flex: 4,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            12.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                4.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  getJsonField(
                                                                                    catalogeEntryItem,
                                                                                    r'''$["description"]''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                ))
                                                                  Expanded(
                                                                    flex: 2,
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        getJsonField(
                                                                          catalogeEntryItem,
                                                                          r'''$["specification"]''',
                                                                        )?.toString(),
                                                                        'json transp',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              32.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(40.0),
                                                                          ),
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                12.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                getJsonField(
                                                                                  catalogeEntryItem,
                                                                                  r'''$["amount"]''',
                                                                                )?.toString(),
                                                                                'jPrice',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              8.0,
                                                                              0.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                30.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                44.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.delete_forever_outlined,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 20.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              _model.removeAtIndexFromCatalogeItems(catalogeEntryIndex);
                                                                              setState(() {});
                                                                            },
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ].addToEnd(const SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 12.0, 24.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.05),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                                text: 'Cancel',
                                options: FFButtonOptions(
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  hoverBorderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverElevation: 3.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.05),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.addProject = await BatteryAPIGroup
                                      .upsertProjectCall
                                      .call(
                                    partner: _model.yourNameTextController.text,
                                    startWeek: _model.startWeek,
                                    productsJson: _model.catalogeItems,
                                    startYear: _model.startYear,
                                    endWeek: _model.endWeek,
                                    endYear: _model.endYear,
                                  );

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        (_model.addProject?.bodyText ?? ''),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                text: 'Confirm',
                                options: FFButtonOptions(
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  hoverBorderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverElevation: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
