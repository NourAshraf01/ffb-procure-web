import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_table_widget.dart';
import '/components/loading_indicator_widget.dart';
import '/components/modals_extra/modal_create_supplier/modal_create_supplier_widget.dart';
import '/components/table_details/supplier/supplier_details/supplier_details_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'supplier_list_model.dart';
export 'supplier_list_model.dart';

class SupplierListWidget extends StatefulWidget {
  const SupplierListWidget({super.key});

  @override
  State<SupplierListWidget> createState() => _SupplierListWidgetState();
}

class _SupplierListWidgetState extends State<SupplierListWidget> {
  late SupplierListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupplierListModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.supplierQuery = await BatteryAPIGroup.getSuppliersCall.call();

      _model.supplierData = ((_model.supplierQuery?.jsonBody ?? '')
              .toList()
              .map<SupplierStruct?>(SupplierStruct.maybeFromMap)
              .toList() as Iterable<SupplierStruct?>)
          .withoutNulls
          .toList()
          .cast<SupplierStruct>();
      _model.queryFetched = true;
      setState(() {});
      _model.paginatedDataTableController.paginatorController
          .setRowsPerPage(random_data.randomInteger(10, 10));
    });

    _model.supplierSearchTextController ??= TextEditingController();
    _model.supplierSearchFocusNode ??= FocusNode();

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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: Text(
                            'Supplier List',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: SizedBox(
                        width: 270.0,
                        child: TextFormField(
                          controller: _model.supplierSearchTextController,
                          focusNode: _model.supplierSearchFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.supplierSearchTextController',
                            const Duration(milliseconds: 1000),
                            () async {
                              _model.supplierSearchResults = functions
                                  .searchTable(
                                      _model.supplierData
                                          .map((e) => e.toMap())
                                          .toList(),
                                      _model.supplierSearchTextController.text)
                                  .map((e) => SupplierStruct.maybeFromMap(e))
                                  .withoutNulls
                                  .toList()
                                  .cast<SupplierStruct>();
                              setState(() {});
                            },
                          ),
                          autofocus: false,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Search suppliers...',
                            hintStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x69E5E7EB),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: const Icon(
                              Icons.search_rounded,
                              color: Color(0xFF57636C),
                              size: 20.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                          validator: _model
                              .supplierSearchTextControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        await showDialog(
                          barrierColor: FlutterFlowTheme.of(context).accent4,
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: const ModalCreateSupplierWidget(),
                            );
                          },
                        );
                      },
                      text: 'Add supplier',
                      icon: const Icon(
                        Icons.add_rounded,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF4B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final supplier =
                              (_model.supplierSearchTextController
                                                  .text !=
                                              ''
                                      ? _model.supplierSearchResults
                                      : _model.supplierData)
                                  .toList();
                          if (supplier.isEmpty) {
                            return const Center(
                              child: EmptyTableWidget(),
                            );
                          }

                          return FlutterFlowDataTable<SupplierStruct>(
                            controller: _model.paginatedDataTableController,
                            data: supplier,
                            columnsBuilder: (onSortChanged) => [
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'ID',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                fixedWidth: 50.0,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Supplier Information',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                fixedWidth: 250.0,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Country',
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Availability',
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Risk Index',
                                    textAlign: TextAlign.center,
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Reliability Index',
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Sustainability Index',
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Materials',
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Open Orders',
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
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    ' ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                fixedWidth: 0.0,
                              ),
                            ],
                            dataRowBuilder: (supplierItem, supplierIndex,
                                    selected, onSelectChanged) =>
                                DataRow(
                              color: WidgetStateProperty.all(
                                supplierIndex % 2 == 0
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                              ),
                              cells: [
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: SupplierDetailsWidget(
                                              supplier: supplierItem,
                                              pageIndex: 0,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      valueOrDefault<String>(
                                        supplierItem.id.toString(),
                                        'DB ID',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            letterSpacing: 0.0,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 5.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: SupplierDetailsWidget(
                                              supplier: supplierItem,
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              supplierItem.name,
                                              'Default Supplier Name',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        if (supplierItem.email != '')
                                          Text(
                                            valueOrDefault<String>(
                                              supplierItem.email,
                                              'Email',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    supplierItem.country,
                                    'Country',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    supplierItem.availability
                                        ? 'Active'
                                        : 'Inactive',
                                    'Status',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                CircularPercentIndicator(
                                  percent: supplierItem.riskIndex,
                                  radius: 17.5,
                                  lineWidth: 4.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    formatNumber(
                                      supplierItem.riskIndex,
                                      formatType: FormatType.custom,
                                      format: '#.#',
                                      locale: '',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                CircularPercentIndicator(
                                  percent: supplierItem.reliability,
                                  radius: 17.5,
                                  lineWidth: 4.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    formatNumber(
                                      supplierItem.reliability,
                                      formatType: FormatType.custom,
                                      format: '#.#',
                                      locale: '',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                CircularPercentIndicator(
                                  percent: supplierItem.sustainabilityIndex,
                                  radius: 17.5,
                                  lineWidth: 4.0,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    formatNumber(
                                      supplierItem.sustainabilityIndex,
                                      formatType: FormatType.custom,
                                      format: '#.#',
                                      locale: '',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: SupplierDetailsWidget(
                                              supplier: supplierItem,
                                              pageIndex: 1,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      '${supplierItem.matCount.toString()} Materials',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: SupplierDetailsWidget(
                                              supplier: supplierItem,
                                              pageIndex: 2,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      '${supplierItem.orderCount.toString()} Orders',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            letterSpacing: 0.0,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:
                                      <Widget>[].divide(const SizedBox(width: 10.0)),
                                ),
                              ].map((c) => DataCell(c)).toList(),
                            ),
                            emptyBuilder: () => const Center(
                              child: EmptyTableWidget(),
                            ),
                            paginated: true,
                            selectable: false,
                            hidePaginator: false,
                            showFirstLastButtons: false,
                            height: double.infinity,
                            headingRowHeight: 40.0,
                            dataRowHeight: 54.0,
                            columnSpacing: 20.0,
                            headingRowColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            addHorizontalDivider: true,
                            addTopAndBottomDivider: true,
                            hideDefaultHorizontalDivider: false,
                            horizontalDividerColor:
                                FlutterFlowTheme.of(context).alternate,
                            horizontalDividerThickness: 1.0,
                            addVerticalDivider: false,
                          );
                        },
                      ),
                    ),
                    if (!_model.queryFetched)
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 500.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.loadingIndicatorModel,
                            updateCallback: () => setState(() {}),
                            child: const LoadingIndicatorWidget(),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
