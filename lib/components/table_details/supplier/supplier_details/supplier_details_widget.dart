import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_table_widget.dart';
import '/components/table_details/supplier/modal_create_add_material/modal_create_add_material_widget.dart';
import '/components/table_details/supplier/modal_edit_material/modal_edit_material_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'supplier_details_model.dart';
export 'supplier_details_model.dart';

class SupplierDetailsWidget extends StatefulWidget {
  const SupplierDetailsWidget({
    super.key,
    required this.supplier,
    int? pageIndex,
  }) : pageIndex = pageIndex ?? 0;

  final SupplierStruct? supplier;
  final int pageIndex;

  @override
  State<SupplierDetailsWidget> createState() => _SupplierDetailsWidgetState();
}

class _SupplierDetailsWidgetState extends State<SupplierDetailsWidget>
    with TickerProviderStateMixin {
  late SupplierDetailsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupplierDetailsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isFetching = true;
      setState(() {});
      _model.supplierQuery = await BatteryAPIGroup.getSupplierCall.call(
        supplierId: widget.supplier?.id,
      );

      if ((_model.supplierQuery?.succeeded ?? true)) {
        _model.supplierMaterials = SupplierDetailStruct.maybeFromMap(
                (_model.supplierQuery?.jsonBody ?? ''))!
            .materials
            .toList()
            .cast<SupplierMaterialStruct>();
        _model.isFetching = false;
        _model.location = functions.supplierLatLng(widget.supplier!);
        _model.country = widget.supplier?.country;
        setState(() {});
      } else {
        Navigator.pop(context);
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: min(
          valueOrDefault<int>(
            widget.pageIndex,
            0,
          ),
          2),
    )..addListener(() => setState(() {}));
    _model.supplierNameTextController ??=
        TextEditingController(text: widget.supplier?.name);
    _model.supplierNameFocusNode ??= FocusNode();

    _model.supplierEmailTextController ??=
        TextEditingController(text: widget.supplier?.email);
    _model.supplierEmailFocusNode ??= FocusNode();

    _model.contractAvailabilityValue = widget.supplier!.availability;
    _model.textController3 ??=
        TextEditingController(text: _model.placePickerValue.latLng.toString());
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, -30.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 400.ms),
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: const BoxDecoration(
            color: Color(0xB0E5E7EB),
          ),
          child: Padding(
            padding: const EdgeInsets.all(70.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Stack(
                children: [
                  if (!_model.isFetching)
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Supplier Details',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        valueOrDefault<String>(
                                                          widget
                                                              .supplier?.name,
                                                          'Default Supplier Name',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation1']!),
                                                      Text(
                                                        '#${widget.supplier?.externalId != null && widget.supplier?.externalId != '' ? widget.supplier?.externalId : widget.supplier?.id.toString()}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textOnPageLoadAnimation2']!),
                                                      if (widget.supplier
                                                                  ?.externalId !=
                                                              null &&
                                                          widget.supplier
                                                                  ?.externalId !=
                                                              '')
                                                        AlignedTooltip(
                                                          content: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    6.0),
                                                            child: Text(
                                                              'This is a supplier that is synced from the WMS system. Some fields won\'t be editable from this system.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          offset: 4.0,
                                                          preferredDirection:
                                                              AxisDirection
                                                                  .right,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          elevation: 4.0,
                                                          tailBaseWidth: 18.0,
                                                          tailLength: 0.0,
                                                          waitDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      100),
                                                          showDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      1500),
                                                          triggerMode:
                                                              TooltipTriggerMode
                                                                  .tap,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        2.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons
                                                                  .info_outline,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        widget
                                                            .supplier?.country,
                                                        'Germany',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textOnPageLoadAnimation3']!),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            elevation: 4.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius: 10.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: Icon(
                                                Icons.delete,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                size: 24.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 6.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Sustainability Index',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  CircularPercentIndicator(
                                                    percent: widget.supplier!
                                                        .sustainabilityIndex,
                                                    radius: 30.0,
                                                    lineWidth: 8.0,
                                                    animation: true,
                                                    animateFromLastPercent:
                                                        true,
                                                    progressColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    center: Text(
                                                      formatNumber(
                                                        widget.supplier!
                                                            .sustainabilityIndex,
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '#.#',
                                                        locale: '',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 20.0)),
                                              ),
                                              Text(
                                                'Reliability Index',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              CircularPercentIndicator(
                                                percent: widget
                                                    .supplier!.reliability,
                                                radius: 30.0,
                                                lineWidth: 8.0,
                                                animation: true,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                center: Text(
                                                  formatNumber(
                                                    widget
                                                        .supplier!.reliability,
                                                    formatType:
                                                        FormatType.custom,
                                                    format: '#.#',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 20.0)),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Geo Political Index',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              CircularPercentIndicator(
                                                percent:
                                                    widget.supplier!.riskIndex,
                                                radius: 30.0,
                                                lineWidth: 8.0,
                                                animation: true,
                                                animateFromLastPercent: true,
                                                progressColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                center: Text(
                                                  formatNumber(
                                                    widget.supplier!.riskIndex,
                                                    formatType:
                                                        FormatType.custom,
                                                    format: '#.#',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 20.0)),
                                          ),
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    _model.dataUpdate =
                                                        await BatteryAPIGroup
                                                            .requestDataUpdateCall
                                                            .call(
                                                      supplierId:
                                                          widget.supplier?.id,
                                                    );

                                                    if ((_model.dataUpdate
                                                            ?.succeeded ??
                                                        true)) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Data Update Sent Successfuly',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary,
                                                        ),
                                                      );
                                                    }

                                                    setState(() {});
                                                  },
                                                  text: 'Request Data Update',
                                                  icon: const Icon(
                                                    Icons.outgoing_mail,
                                                    size: 22.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 50.0)),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 1.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            decoration: const BoxDecoration(),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: const Alignment(0.0, 0),
                                        child: TabBar(
                                          isScrollable: true,
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          labelPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          unselectedLabelStyle: const TextStyle(),
                                          indicatorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 12.0, 4.0, 12.0),
                                          tabs: const [
                                            Tab(
                                              text: 'Supplier Data',
                                            ),
                                            Tab(
                                              text: 'Materials',
                                            ),
                                            Tab(
                                              text: 'Open Orders',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [
                                              () async {},
                                              () async {},
                                              () async {}
                                            ][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(25.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    constraints: const BoxConstraints(
                                                      minWidth: 1.0,
                                                      minHeight: 1.0,
                                                      maxWidth: 500.0,
                                                      maxHeight: 599.0,
                                                    ),
                                                    decoration: const BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  16.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .supplierNameTextController,
                                                            focusNode: _model
                                                                .supplierNameFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.supplierNameTextController',
                                                              const Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                if (!_model
                                                                    .canSave) {
                                                                  _model.canSave =
                                                                      true;
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            readOnly: (_model
                                                                        .isEditable ==
                                                                    false) ||
                                                                (widget.supplier
                                                                            ?.externalId !=
                                                                        null &&
                                                                    widget.supplier
                                                                            ?.externalId !=
                                                                        ''),
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Supplier Name',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText: 'Name',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: _model
                                                                          .isEditable
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
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
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .supplierNameTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  16.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .supplierEmailTextController,
                                                            focusNode: _model
                                                                .supplierEmailFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.supplierEmailTextController',
                                                              const Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                if (!_model
                                                                    .canSave) {
                                                                  _model.canSave =
                                                                      true;
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            readOnly: _model
                                                                    .isEditable ==
                                                                false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Supplier Contact Email',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintText: 'Email',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: _model
                                                                          .isEditable
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 2.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
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
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .supplierEmailTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Availability:',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Switch.adaptive(
                                                                value: _model
                                                                    .contractAvailabilityValue!,
                                                                onChanged:
                                                                    (newValue) async {
                                                                  setState(() =>
                                                                      _model.contractAvailabilityValue =
                                                                          newValue);
                                                                  if (newValue) {
                                                                    if (!_model
                                                                        .canSave) {
                                                                      _model.canSave =
                                                                          true;
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  } else {
                                                                    if (!_model
                                                                        .canSave) {
                                                                      _model.canSave =
                                                                          true;
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                  }
                                                                },
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                activeTrackColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                inactiveTrackColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                inactiveThumbColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 10.0)),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (!_model.canSave) {
                                                          _model.canSave = true;
                                                          setState(() {});
                                                        }
                                                      },
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Opacity(
                                                            opacity: 0.0,
                                                            child: Container(
                                                              width: 0.0,
                                                              height: 0.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: SizedBox(
                                                                width: 0.0,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController3,
                                                                  focusNode: _model
                                                                      .textFieldFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.textController3',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      await _model
                                                                          .googleMapsController
                                                                          .future
                                                                          .then(
                                                                        (c) => c
                                                                            .animateCamera(
                                                                          CameraUpdate.newLatLng(_model
                                                                              .placePickerValue
                                                                              .latLng
                                                                              .toGoogleMaps()),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  readOnly:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Label here...',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          lineHeight:
                                                                              0.0,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          lineHeight:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            0.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            0.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            0.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            0.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        lineHeight:
                                                                            0.0,
                                                                      ),
                                                                  maxLines:
                                                                      null,
                                                                  validator: _model
                                                                      .textController3Validator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Stack(
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            14.0),
                                                                  ),
                                                                  child: Builder(
                                                                      builder:
                                                                          (context) {
                                                                    final googleMapMarker = (_model.placePickerValue !=
                                                                            null
                                                                        ? _model
                                                                            .placePickerValue
                                                                            .latLng
                                                                        : _model
                                                                            .location);
                                                                    return FlutterFlowGoogleMap(
                                                                      controller:
                                                                          _model
                                                                              .googleMapsController,
                                                                      onCameraIdle:
                                                                          (latLng) =>
                                                                              _model.googleMapsCenter = latLng,
                                                                      initialLocation: _model
                                                                              .googleMapsCenter ??=
                                                                          functions
                                                                              .supplierLatLng(widget.supplier!)!,
                                                                      markers: [
                                                                        if (googleMapMarker !=
                                                                            null)
                                                                          FlutterFlowMarker(
                                                                            googleMapMarker.serialize(),
                                                                            googleMapMarker,
                                                                          ),
                                                                      ],
                                                                      markerColor:
                                                                          GoogleMarkerColor
                                                                              .violet,
                                                                      mapType:
                                                                          MapType
                                                                              .normal,
                                                                      style: GoogleMapStyle
                                                                          .standard,
                                                                      initialZoom:
                                                                          3.0,
                                                                      allowInteraction:
                                                                          false,
                                                                      allowZoom:
                                                                          false,
                                                                      showZoomControls:
                                                                          true,
                                                                      showLocation:
                                                                          false,
                                                                      showCompass:
                                                                          false,
                                                                      showMapToolbar:
                                                                          false,
                                                                      showTraffic:
                                                                          false,
                                                                      centerMapOnMarkerTap:
                                                                          true,
                                                                    );
                                                                  }),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Opacity(
                                                                        opacity:
                                                                            0.8,
                                                                        child:
                                                                            FlutterFlowPlacePicker(
                                                                          iOSGoogleMapsApiKey:
                                                                              'AIzaSyAOkC2WxDFDjCrs7uvGbgBL60dzJSiExdQ',
                                                                          androidGoogleMapsApiKey:
                                                                              'AIzaSyAOkC2WxDFDjCrs7uvGbgBL60dzJSiExdQ',
                                                                          webGoogleMapsApiKey:
                                                                              'AIzaSyAOkC2WxDFDjCrs7uvGbgBL60dzJSiExdQ',
                                                                          onSelect:
                                                                              (place) async {
                                                                            setState(() =>
                                                                                _model.placePickerValue = place);
                                                                          },
                                                                          defaultText:
                                                                              'Select Location',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.place,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            size:
                                                                                16.0,
                                                                          ),
                                                                          buttonOptions:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                40.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                2.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Opacity(
                                                                        opacity:
                                                                            0.8,
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await _model.googleMapsController.future.then(
                                                                              (c) => c.animateCamera(
                                                                                CameraUpdate.newLatLng((_model.placePickerValue != null ? _model.placePickerValue.latLng : _model.location!).toGoogleMaps()),
                                                                              ),
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Center',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                3.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12.0),
                                                                            hoverColor:
                                                                                FlutterFlowTheme.of(context).accent1,
                                                                            hoverBorderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              width: 1.0,
                                                                            ),
                                                                            hoverTextColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            hoverElevation:
                                                                                0.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            20.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 35.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 5.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Builder(
                                                      builder: (context) =>
                                                          FFButtonWidget(
                                                        onPressed: () async {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    ModalCreateAddMaterialWidget(
                                                                  supplierId:
                                                                      widget
                                                                          .supplier!
                                                                          .id,
                                                                  supplierCurrentMaterials:
                                                                      _model
                                                                          .supplierMaterials,
                                                                  addMaterial:
                                                                      (addedMaterial) async {
                                                                    _model.addToSupplierMaterials(
                                                                        addedMaterial);
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                          );

                                                          if (!_model.canSave) {
                                                            _model.canSave =
                                                                true;
                                                            setState(() {});
                                                          }
                                                        },
                                                        text: 'Add Material',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 38.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          hoverColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .accent1,
                                                          hoverBorderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          hoverTextColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          hoverElevation: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final materialCataloge =
                                                              _model
                                                                  .supplierMaterials
                                                                  .toList();
                                                          if (materialCataloge
                                                              .isEmpty) {
                                                            return const Center(
                                                              child:
                                                                  EmptyTableWidget(),
                                                            );
                                                          }

                                                          return FlutterFlowDataTable<
                                                              SupplierMaterialStruct>(
                                                            controller: _model
                                                                .paginatedDataTableController1,
                                                            data:
                                                                materialCataloge,
                                                            columnsBuilder:
                                                                (onSortChanged) =>
                                                                    [
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'ID',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    90.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Name',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    240.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Lead Time',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Co2 Emissions',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Distance',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Price',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    ' ',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            dataRowBuilder:
                                                                (materialCatalogeItem,
                                                                        materialCatalogeIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                              color:
                                                                  WidgetStateProperty
                                                                      .all(
                                                                materialCatalogeIndex %
                                                                            2 ==
                                                                        0
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                              cells: [
                                                                AlignedTooltip(
                                                                  content:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            4.0),
                                                                    child: Text(
                                                                      'Edit material',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Plus Jakarta Sans',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  offset: 4.0,
                                                                  preferredDirection:
                                                                      AxisDirection
                                                                          .down,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  elevation:
                                                                      4.0,
                                                                  tailBaseWidth:
                                                                      24.0,
                                                                  tailLength:
                                                                      12.0,
                                                                  waitDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100),
                                                                  showDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              1500),
                                                                  triggerMode:
                                                                      TooltipTriggerMode
                                                                          .tap,
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: ModalEditMaterialWidget(
                                                                                material: materialCatalogeItem,
                                                                                editMaterial: (editedMaterial) async {
                                                                                  _model.updateSupplierMaterialsAtIndex(
                                                                                    materialCatalogeIndex,
                                                                                    (_) => editedMaterial,
                                                                                  );
                                                                                  setState(() {});
                                                                                },
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          materialCatalogeItem
                                                                              .id
                                                                              .toString(),
                                                                          'DB ID',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              letterSpacing: 0.0,
                                                                              decoration: TextDecoration.underline,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    materialCatalogeItem
                                                                        .name,
                                                                    'MaterialName',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    materialCatalogeItem
                                                                        .leadTime
                                                                        .toString(),
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  materialCatalogeItem
                                                                      .co2Emissions
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    materialCatalogeItem
                                                                        .distance
                                                                        .toString(),
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  materialCatalogeItem
                                                                      .price
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    FlutterFlowIconButton(
                                                                      borderColor:
                                                                          Colors
                                                                              .transparent,
                                                                      borderRadius:
                                                                          20.0,
                                                                      borderWidth:
                                                                          1.0,
                                                                      buttonSize:
                                                                          34.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .delete_sharp,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        _model.removeFromSupplierMaterials(
                                                                            materialCatalogeItem);
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                              ]
                                                                  .map((c) =>
                                                                      DataCell(
                                                                          c))
                                                                  .toList(),
                                                            ),
                                                            emptyBuilder: () =>
                                                                const Center(
                                                              child:
                                                                  EmptyTableWidget(),
                                                            ),
                                                            paginated: true,
                                                            selectable: false,
                                                            hidePaginator:
                                                                false,
                                                            showFirstLastButtons:
                                                                false,
                                                            headingRowHeight:
                                                                40.0,
                                                            dataRowHeight: 54.0,
                                                            columnSpacing: 20.0,
                                                            headingRowColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            addHorizontalDivider:
                                                                true,
                                                            addTopAndBottomDivider:
                                                                true,
                                                            hideDefaultHorizontalDivider:
                                                                false,
                                                            horizontalDividerColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            horizontalDividerThickness:
                                                                1.0,
                                                            addVerticalDivider:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 15.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 5.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final orderList = SupplierDetailStruct
                                                                      .maybeFromMap(
                                                                          (_model.supplierQuery?.jsonBody ??
                                                                              ''))
                                                                  ?.openOrders
                                                                  .toList() ??
                                                              [];
                                                          if (orderList
                                                              .isEmpty) {
                                                            return const Center(
                                                              child:
                                                                  EmptyTableWidget(),
                                                            );
                                                          }

                                                          return FlutterFlowDataTable<
                                                              SupplierOrderStruct>(
                                                            controller: _model
                                                                .paginatedDataTableController2,
                                                            data: orderList,
                                                            columnsBuilder:
                                                                (onSortChanged) =>
                                                                    [
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'ID',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    90.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Material',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                fixedWidth:
                                                                    240.0,
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Planned Delivery Date',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Actual Delivery Date',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              DataColumn2(
                                                                label:
                                                                    DefaultTextStyle
                                                                        .merge(
                                                                  softWrap:
                                                                      true,
                                                                  child: Text(
                                                                    'Amount',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                            dataRowBuilder:
                                                                (orderListItem,
                                                                        orderListIndex,
                                                                        selected,
                                                                        onSelectChanged) =>
                                                                    DataRow(
                                                              color:
                                                                  WidgetStateProperty
                                                                      .all(
                                                                orderListIndex %
                                                                            2 ==
                                                                        0
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                              cells: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    orderListItem
                                                                        .id
                                                                        .toString(),
                                                                    'DB ID',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    orderListItem
                                                                        .materialId
                                                                        .toString(),
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  orderListItem
                                                                      .plannedDeliveryDate,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  orderListItem
                                                                      .deliveryDate,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    orderListItem
                                                                        .amount
                                                                        .toString(),
                                                                    '1',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ]
                                                                  .map((c) =>
                                                                      DataCell(
                                                                          c))
                                                                  .toList(),
                                                            ),
                                                            emptyBuilder: () =>
                                                                const Center(
                                                              child:
                                                                  EmptyTableWidget(),
                                                            ),
                                                            paginated: true,
                                                            selectable: false,
                                                            hidePaginator:
                                                                false,
                                                            showFirstLastButtons:
                                                                false,
                                                            headingRowHeight:
                                                                40.0,
                                                            dataRowHeight: 54.0,
                                                            columnSpacing: 20.0,
                                                            headingRowColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            addHorizontalDivider:
                                                                true,
                                                            addTopAndBottomDivider:
                                                                true,
                                                            hideDefaultHorizontalDivider:
                                                                false,
                                                            horizontalDividerColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            horizontalDividerThickness:
                                                                1.0,
                                                            addVerticalDivider:
                                                                false,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 15.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 15.0),
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
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                    hoverColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    hoverBorderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 2.0,
                                    ),
                                    hoverTextColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    hoverElevation: 3.0,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 1.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.upsertSupplier =
                                        await BatteryAPIGroup.upsertSupplierCall
                                            .call(
                                      name: _model
                                          .supplierNameTextController.text,
                                      lat: _model.placePickerValue != null
                                          ? functions.getLatGooglePlace(
                                              _model.placePickerValue)
                                          : widget.supplier?.lat,
                                      long: _model.placePickerValue != null
                                          ? functions
                                              .getLongFromGooglePlaceCopy(
                                                  _model.placePickerValue)
                                          : widget.supplier?.long,
                                      country: _model.placePickerValue != null
                                          ? _model.placePickerValue.country
                                          : widget.supplier?.country,
                                      materialsJson: _model.supplierMaterials
                                          .map((e) => e.toMap())
                                          .toList(),
                                      id: widget.supplier?.id,
                                      email: _model
                                          .supplierEmailTextController.text,
                                      availability:
                                          _model.contractAvailabilityValue,
                                    );

                                    if ((_model.upsertSupplier?.succeeded ??
                                        true)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Succesfully updated supplier!',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Error! Something went wrong',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                          duration:
                                              const Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .error,
                                        ),
                                      );
                                    }

                                    Navigator.pop(context);

                                    setState(() {});
                                  },
                                  text: 'Save Supplier',
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                    hoverTextColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    hoverElevation: 0.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  if (_model.isFetching)
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      child: custom_widgets.LoadingIndicator(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ),
      ],
    );
  }
}
