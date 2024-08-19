import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/dropdown_filter_suppliers/dropdown_filter_suppliers_widget.dart';
import '/components/empty_table_widget.dart';
import '/components/loading_indicator_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'supplier_map_tab_model.dart';
export 'supplier_map_tab_model.dart';

class SupplierMapTabWidget extends StatefulWidget {
  const SupplierMapTabWidget({super.key});

  @override
  State<SupplierMapTabWidget> createState() => _SupplierMapTabWidgetState();
}

class _SupplierMapTabWidgetState extends State<SupplierMapTabWidget>
    with TickerProviderStateMixin {
  late SupplierMapTabModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupplierMapTabModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.fetchingData = true;
      setState(() {});
      _model.suppliersList = await BatteryAPIGroup.getSuppliersCall.call();

      if ((_model.suppliersList?.succeeded ?? true)) {
        _model.countriesQuery =
            await BatteryAPIGroup.showCountryRiskCall.call();

        _model.materialsQuery = await BatteryAPIGroup.getMaterialsCall.call();

        if ((_model.countriesQuery?.succeeded ?? true)) {
          _model.countryRisks = ((_model.countriesQuery?.jsonBody ?? '')
                  .toList()
                  .map<CountryRiskStruct?>(CountryRiskStruct.maybeFromMap)
                  .toList() as Iterable<CountryRiskStruct?>)
              .withoutNulls
              .toList()
              .cast<CountryRiskStruct>();
          _model.suppliers = ((_model.suppliersList?.jsonBody ?? '')
                  .toList()
                  .map<SupplierStruct?>(SupplierStruct.maybeFromMap)
                  .toList() as Iterable<SupplierStruct?>)
              .withoutNulls
              .toList()
              .cast<SupplierStruct>();
          setState(() {});
        }
        _model.fetchingData = false;
        setState(() {});
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.873, 0),
            end: const Offset(0, 0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
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
        if (_model.fetchingData == false)
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if ((_model.selectedSupplier != null) ||
                      _model.searchSupplierClicked)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: MediaQuery.sizeOf(context).width * 0.33,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x25090F13),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model.textController,
                                            focusNode:
                                                _model.textFieldFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textController',
                                              const Duration(milliseconds: 1000),
                                              () async {
                                                _model
                                                        .filteredSuppliers =
                                                    functions
                                                        .searchTable(
                                                            _model.suppliers
                                                                .map((e) => e
                                                                    .toMap())
                                                                .toList(),
                                                            _model
                                                                .textController
                                                                .text)
                                                        .map((e) =>
                                                            SupplierStruct
                                                                .maybeFromMap(
                                                                    e))
                                                        .withoutNulls
                                                        .toList()
                                                        .cast<SupplierStruct>();
                                                setState(() {});
                                              },
                                            ),
                                            autofocus: true,
                                            textCapitalization:
                                                TextCapitalization.sentences,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search suppliers...',
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
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              errorBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              focusedErrorBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              prefixIcon: const Icon(
                                                Icons.search_sharp,
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                            validator: _model
                                                .textControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 38.0,
                                        height: 38.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Builder(
                                          builder: (context) =>
                                              FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            borderWidth: 1.0,
                                            buttonSize: 30.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            icon: FaIcon(
                                              FontAwesomeIcons.slidersH,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 18.0,
                                            ),
                                            onPressed: () async {
                                              await showAlignedDialog(
                                                context: context,
                                                isGlobal: false,
                                                avoidOverflow: false,
                                                targetAnchor:
                                                    const AlignmentDirectional(
                                                            -1.0, -1.0)
                                                        .resolve(
                                                            Directionality.of(
                                                                context)),
                                                followerAnchor:
                                                    const AlignmentDirectional(
                                                            0.0, 0.0)
                                                        .resolve(
                                                            Directionality.of(
                                                                context)),
                                                builder: (dialogContext) {
                                                  return Material(
                                                    color: Colors.transparent,
                                                    child:
                                                        DropdownFilterSuppliersWidget(
                                                      materials: ((_model
                                                                      .materialsQuery
                                                                      ?.jsonBody ??
                                                                  '')
                                                              .toList()
                                                              .map<MaterialStruct?>(
                                                                  MaterialStruct
                                                                      .maybeFromMap)
                                                              .toList() as Iterable<MaterialStruct?>)
                                                          .withoutNulls,
                                                      selectedFilters:
                                                          (selectedMaterials,
                                                              sustain,
                                                              risk,
                                                              rely) async {
                                                        _model.suppliersFilterQuery =
                                                            await BatteryAPIGroup
                                                                .getSuppliersCall
                                                                .call(
                                                          materialIdsList:
                                                              selectedMaterials,
                                                        );

                                                        if ((_model
                                                                .suppliersFilterQuery
                                                                ?.succeeded ??
                                                            true)) {
                                                          _model
                                                              .filteredSuppliers = ((_model
                                                                          .suppliersFilterQuery
                                                                          ?.jsonBody ??
                                                                      '')
                                                                  .toList()
                                                                  .map<SupplierStruct?>(
                                                                      SupplierStruct
                                                                          .maybeFromMap)
                                                                  .toList() as Iterable<SupplierStruct?>)
                                                              .withoutNulls
                                                              .toList()
                                                              .cast<SupplierStruct>();
                                                          setState(() {});
                                                        }
                                                      },
                                                    ),
                                                  );
                                                },
                                              );

                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            if (_model.selectedSupplier != null)
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 14.0, 16.0, 16.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 80.0,
                                                    height: 80.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://picsum.photos/seed/871/600',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      _model.selectedSupplier!
                                                              .availability
                                                          ? 'Available'
                                                          : 'Unavailable',
                                                      'availability',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color: _model
                                                                  .selectedSupplier!
                                                                  .availability
                                                              ? Colors.green
                                                              : const Color(
                                                                  0xFFEF5350),
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ].divide(const SizedBox(height: 4.0)),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText(
                                                      valueOrDefault<String>(
                                                        _model.selectedSupplier
                                                            ?.name,
                                                        'name',
                                                      ),
                                                      minFontSize: 14.0,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model
                                                              .selectedSupplier
                                                              ?.country,
                                                          'country',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 18.0)),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 400.0,
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  padding: const EdgeInsets.all(4.0),
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Metrics',
                                                    ),
                                                    Tab(
                                                      text: 'Materials',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {
                                                        if (_model
                                                                .selectedSupplier
                                                                ?.id !=
                                                            _model
                                                                .selectedSupplierDetail
                                                                ?.id) {
                                                          _model.fetchingMaterials =
                                                              false;
                                                          setState(() {});
                                                          _model.selectedSupplierDetailApi =
                                                              await BatteryAPIGroup
                                                                  .getSupplierCall
                                                                  .call(
                                                            supplierId: _model
                                                                .selectedSupplier
                                                                ?.id,
                                                          );

                                                          if ((_model
                                                                  .selectedSupplierDetailApi
                                                                  ?.succeeded ??
                                                              true)) {
                                                            _model.fetchingMaterials =
                                                                false;
                                                            _model.selectedSupplierDetail =
                                                                SupplierDetailStruct
                                                                    .maybeFromMap((_model
                                                                            .selectedSupplierDetailApi
                                                                            ?.jsonBody ??
                                                                        ''));
                                                            setState(() {});
                                                          }
                                                        }

                                                        setState(() {});
                                                      }
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(12.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CircularPercentIndicator(
                                                                      percent: _model
                                                                          .selectedSupplier!
                                                                          .sustainabilityIndex,
                                                                      radius:
                                                                          45.0,
                                                                      lineWidth:
                                                                          12.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      center:
                                                                          Text(
                                                                        (double
                                                                            sustain) {
                                                                          return "${(sustain * 100).round()}%";
                                                                        }(_model
                                                                            .selectedSupplier!
                                                                            .sustainabilityIndex),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Sustainability',
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
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CircularPercentIndicator(
                                                                      percent: _model
                                                                          .selectedSupplier!
                                                                          .riskIndex,
                                                                      radius:
                                                                          45.0,
                                                                      lineWidth:
                                                                          12.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      center:
                                                                          Text(
                                                                        (double
                                                                            risk) {
                                                                          return "${(risk * 100).round()}%";
                                                                        }(_model
                                                                            .selectedSupplier!
                                                                            .riskIndex),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Risk',
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
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CircularPercentIndicator(
                                                                      percent: _model
                                                                          .selectedSupplier!
                                                                          .reliability,
                                                                      radius:
                                                                          45.0,
                                                                      lineWidth:
                                                                          12.0,
                                                                      animation:
                                                                          true,
                                                                      animateFromLastPercent:
                                                                          true,
                                                                      progressColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      center:
                                                                          Text(
                                                                        (double
                                                                            rel) {
                                                                          return ("${(rel * 100).round()}%");
                                                                        }(_model
                                                                            .selectedSupplier!
                                                                            .reliability),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineSmall
                                                                            .override(
                                                                              fontFamily: 'Outfit',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'Reliability',
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
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 60.0)),
                                                      ),
                                                    ),
                                                    Stack(
                                                      children: [
                                                        if (!_model
                                                            .fetchingMaterials)
                                                          Builder(
                                                            builder: (context) {
                                                              final materialCataloge = _model
                                                                      .selectedSupplierDetail
                                                                      ?.materials
                                                                      .toList() ??
                                                                  [];
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
                                                                    .paginatedDataTableController,
                                                                data:
                                                                    materialCataloge,
                                                                columnsBuilder:
                                                                    (onSortChanged) =>
                                                                        [
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'ID',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    fixedWidth:
                                                                        90.0,
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Name',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Lead Time',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Co2 Emissions',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Distance',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        'Price',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  DataColumn2(
                                                                    label: DefaultTextStyle
                                                                        .merge(
                                                                      softWrap:
                                                                          true,
                                                                      child:
                                                                          Text(
                                                                        ' ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    fixedWidth:
                                                                        0.0,
                                                                  ),
                                                                ],
                                                                dataRowBuilder: (materialCatalogeItem,
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
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .secondaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                  ),
                                                                  cells: [
                                                                    AlignedTooltip(
                                                                      content:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(4.0),
                                                                        child:
                                                                            Text(
                                                                          'Edit material',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      offset:
                                                                          4.0,
                                                                      preferredDirection:
                                                                          AxisDirection
                                                                              .down,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      elevation:
                                                                          4.0,
                                                                      tailBaseWidth:
                                                                          24.0,
                                                                      tailLength:
                                                                          12.0,
                                                                      waitDuration:
                                                                          const Duration(
                                                                              milliseconds: 100),
                                                                      showDuration:
                                                                          const Duration(
                                                                              milliseconds: 1500),
                                                                      triggerMode:
                                                                          TooltipTriggerMode
                                                                              .tap,
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
                                                                    Container(),
                                                                  ]
                                                                      .map((c) =>
                                                                          DataCell(
                                                                              c))
                                                                      .toList(),
                                                                ),
                                                                emptyBuilder:
                                                                    () =>
                                                                        const Center(
                                                                  child:
                                                                      EmptyTableWidget(),
                                                                ),
                                                                paginated: true,
                                                                selectable:
                                                                    false,
                                                                hidePaginator:
                                                                    false,
                                                                showFirstLastButtons:
                                                                    false,
                                                                headingRowHeight:
                                                                    40.0,
                                                                dataRowHeight:
                                                                    54.0,
                                                                columnSpacing:
                                                                    20.0,
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
                                                        if (_model
                                                            .fetchingMaterials)
                                                          wrapWithModel(
                                                            model: _model
                                                                .loadingIndicatorModel1,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                const LoadingIndicatorWidget(),
                                                          ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 24.0,
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: double.infinity,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: custom_widgets.MapView(
                              width: double.infinity,
                              height: double.infinity,
                              filteredSuppliers:
                                  _model.textController.text != ''
                                      ? _model.filteredSuppliers
                                      : _model.suppliers,
                              countryRisks: _model.countryRisks,
                              onMarkerTap: (selectedSupplier) async {
                                _model.selectedSupplier = selectedSupplier;
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 11.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                    spreadRadius: 2.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Stack(
                                children: [
                                  if (!_model.searchSupplierClicked ||
                                      (_model.selectedSupplier == null))
                                    FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 32.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.search_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                      onPressed: () async {
                                        _model.searchSupplierClicked = true;
                                        setState(() {});
                                      },
                                    ),
                                  if (_model.searchSupplierClicked ||
                                      (_model.selectedSupplier != null))
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 32.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.close,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                      onPressed: () async {
                                        _model.searchSupplierClicked = false;
                                        _model.selectedSupplier = null;
                                        setState(() {});
                                      },
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    ' ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
            ),
          ),
        if (_model.fetchingData == true)
          wrapWithModel(
            model: _model.loadingIndicatorModel2,
            updateCallback: () => setState(() {}),
            child: const LoadingIndicatorWidget(),
          ),
      ],
    );
  }
}
