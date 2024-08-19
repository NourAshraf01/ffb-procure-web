import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'modal_sync_supplier_model.dart';
export 'modal_sync_supplier_model.dart';

class ModalSyncSupplierWidget extends StatefulWidget {
  const ModalSyncSupplierWidget({
    super.key,
    required this.selectSupplier,
  });

  final Future Function(SupplierStruct selectedSupplier)? selectSupplier;

  @override
  State<ModalSyncSupplierWidget> createState() =>
      _ModalSyncSupplierWidgetState();
}

class _ModalSyncSupplierWidgetState extends State<ModalSyncSupplierWidget>
    with TickerProviderStateMixin {
  late ModalSyncSupplierModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalSyncSupplierModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isFetching = true;
      setState(() {});
      _model.externalSuppliersQuery =
          await BatteryAPIGroup.getExternalSuppliersCall.call();

      if ((_model.externalSuppliersQuery?.succeeded ?? true)) {
        _model.isFetching = false;
        _model.externalSuppliers =
            ((_model.externalSuppliersQuery?.jsonBody ?? '')
                    .toList()
                    .map<ExternalSupplierStruct?>(
                        ExternalSupplierStruct.maybeFromMap)
                    .toList() as Iterable<ExternalSupplierStruct?>)
                .withoutNulls
                .toList()
                .cast<ExternalSupplierStruct>();
        setState(() {});
      }
    });

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
              child: Stack(
                children: [
                  if (!_model.isFetching)
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Select External Supplier ',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 0.0, 0.0),
                          child: Text(
                            'Select supplier from list.',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.dropDownValueController ??=
                                                FormFieldController<String>(
                                          _model.dropDownValue ??= '-1',
                                        ),
                                        options: List<String>.from(_model
                                            .externalSuppliers
                                            .map((e) => e.id)
                                            .toList()),
                                        optionLabels: functions
                                            .getExternalSuppliersLabels(_model
                                                .externalSuppliers
                                                .toList()),
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue = val),
                                        width: 300.0,
                                        height: 56.0,
                                        maxHeight: 400.0,
                                        searchHintTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                        searchTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Please select...',
                                        searchHintText: 'Search for an item...',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 2.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: true,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].addToEnd(const SizedBox(height: 16.0)),
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
                                alignment: const AlignmentDirectional(0.0, 0.05),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await widget.selectSupplier?.call(
                                      SupplierStruct(
                                        name: ((_model.externalSuppliersQuery
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<ExternalSupplierStruct?>(
                                                        ExternalSupplierStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    ExternalSupplierStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.id == _model.dropDownValue)
                                            .toList()
                                            .first
                                            .name,
                                        availability: ((_model
                                                            .externalSuppliersQuery
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<ExternalSupplierStruct?>(
                                                        ExternalSupplierStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    ExternalSupplierStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.id == _model.dropDownValue)
                                            .toList()
                                            .first
                                            .availability,
                                        country: ((_model.externalSuppliersQuery
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<ExternalSupplierStruct?>(
                                                        ExternalSupplierStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    ExternalSupplierStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.id == _model.dropDownValue)
                                            .toList()
                                            .first
                                            .country,
                                        email: ((_model.externalSuppliersQuery
                                                            ?.jsonBody ??
                                                        '')
                                                    .toList()
                                                    .map<ExternalSupplierStruct?>(
                                                        ExternalSupplierStruct
                                                            .maybeFromMap)
                                                    .toList()
                                                as Iterable<
                                                    ExternalSupplierStruct?>)
                                            .withoutNulls
                                            .where((e) =>
                                                e.id == _model.dropDownValue)
                                            .toList()
                                            .first
                                            .email,
                                        externalId: _model.dropDownValue,
                                      ),
                                    );
                                    Navigator.pop(context);
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
                      height: 243.0,
                      child: wrapWithModel(
                        model: _model.loadingIndicatorModel,
                        updateCallback: () => setState(() {}),
                        child: const LoadingIndicatorWidget(),
                      ),
                    ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
