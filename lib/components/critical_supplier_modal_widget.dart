import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'critical_supplier_modal_model.dart';
export 'critical_supplier_modal_model.dart';

class CriticalSupplierModalWidget extends StatefulWidget {
  const CriticalSupplierModalWidget({super.key});

  @override
  State<CriticalSupplierModalWidget> createState() =>
      _CriticalSupplierModalWidgetState();
}

class _CriticalSupplierModalWidgetState
    extends State<CriticalSupplierModalWidget> {
  late CriticalSupplierModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CriticalSupplierModalModel());

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
      width: MediaQuery.sizeOf(context).width * 1.5,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 400.0,
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Supplier',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: 400.0,
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 9.0, 0.0),
                              child: Text(
                                'Sustainability',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  51.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Risk',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  87.0, 16.0, 5.0, 0.0),
                              child: Text(
                                'Reliability',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: FutureBuilder<ApiCallResponse>(
                future: BatteryAPIGroup.criticalSuppliersCall.call(),
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
                  final listViewCriticalSuppliersResponse = snapshot.data!;

                  return Builder(
                    builder: (context) {
                      final criticalsupplier =
                          BatteryAPIGroup.criticalSuppliersCall
                                  .data(
                                    listViewCriticalSuppliersResponse.jsonBody,
                                  )
                                  ?.toList() ??
                              [];

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: criticalsupplier.length,
                        itemBuilder: (context, criticalsupplierIndex) {
                          final criticalsupplierItem =
                              criticalsupplier[criticalsupplierIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: 400.0,
                                        decoration: const BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              '${getJsonField(
                                                criticalsupplierItem,
                                                r'''$.supplier.id''',
                                              ).toString()} - ${getJsonField(
                                                criticalsupplierItem,
                                                r'''$.supplier.name''',
                                              ).toString()}',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        width: 400.0,
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        48.0, 8.0, 48.0, 8.0),
                                                child: CircularPercentIndicator(
                                                  percent:
                                                      valueOrDefault<double>(
                                                    getJsonField(
                                                      criticalsupplierItem,
                                                      r'''$.supplier.sustainability_index''',
                                                    ),
                                                    0.0,
                                                  ),
                                                  radius: 20.0,
                                                  lineWidth: 3.0,
                                                  animation: true,
                                                  animateFromLastPercent: true,
                                                  progressColor: getJsonField(
                                                    criticalsupplierItem,
                                                    r'''$.sustainability''',
                                                  )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  center: Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        criticalsupplierItem,
                                                        r'''$.supplier.sustainability_index''',
                                                      )?.toString(),
                                                      '0',
                                                    ).maybeHandleOverflow(
                                                        maxChars: 4),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        48.0, 8.0, 48.0, 8.0),
                                                child: CircularPercentIndicator(
                                                  percent:
                                                      valueOrDefault<double>(
                                                    getJsonField(
                                                      criticalsupplierItem,
                                                      r'''$.supplier.risk_index''',
                                                    ),
                                                    0.0,
                                                  ),
                                                  radius: 20.0,
                                                  lineWidth: 3.0,
                                                  animation: true,
                                                  animateFromLastPercent: true,
                                                  progressColor: getJsonField(
                                                    criticalsupplierItem,
                                                    r'''$.risk''',
                                                  )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  center: Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        criticalsupplierItem,
                                                        r'''$.supplier.risk_index''',
                                                      )?.toString(),
                                                      '0',
                                                    ).maybeHandleOverflow(
                                                        maxChars: 4),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        48.0, 8.0, 15.0, 8.0),
                                                child: CircularPercentIndicator(
                                                  percent:
                                                      valueOrDefault<double>(
                                                    getJsonField(
                                                      criticalsupplierItem,
                                                      r'''$.supplier.reliability''',
                                                    ),
                                                    0.0,
                                                  ),
                                                  radius: 20.0,
                                                  lineWidth: 3.0,
                                                  animation: true,
                                                  animateFromLastPercent: true,
                                                  progressColor: getJsonField(
                                                    criticalsupplierItem,
                                                    r'''$.reliability''',
                                                  )
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent4,
                                                  center: Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        criticalsupplierItem,
                                                        r'''$.supplier.reliability''',
                                                      )?.toString(),
                                                      '0',
                                                    ).maybeHandleOverflow(
                                                        maxChars: 4),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
