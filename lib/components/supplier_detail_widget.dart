import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'supplier_detail_model.dart';
export 'supplier_detail_model.dart';

class SupplierDetailWidget extends StatefulWidget {
  const SupplierDetailWidget({
    super.key,
    required this.selectedSupplier,
  });

  final SupplierStruct? selectedSupplier;

  @override
  State<SupplierDetailWidget> createState() => _SupplierDetailWidgetState();
}

class _SupplierDetailWidgetState extends State<SupplierDetailWidget> {
  late SupplierDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupplierDetailModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isSupplierDataLoading = true;
      setState(() {});
      _model.supplierDat = await BatteryAPIGroup.getSupplierCall.call(
        supplierId: widget.selectedSupplier?.id,
      );

      if ((_model.supplierDat?.succeeded ?? true)) {
        _model.isSupplierDataLoading = false;
        setState(() {});
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
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
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textController',
                        const Duration(milliseconds: 1000),
                        () => setState(() {}),
                      ),
                      autofocus: true,
                      textCapitalization: TextCapitalization.sentences,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search suppliers...',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.search_sharp,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  FlutterFlowCheckboxGroup(
                    options: const ['Option 1'],
                    onChanged: (val) =>
                        setState(() => _model.checkboxGroupValues = val),
                    controller: _model.checkboxGroupValueController ??=
                        FormFieldController<List<String>>(
                      [],
                    ),
                    activeColor: FlutterFlowTheme.of(context).primary,
                    checkColor: FlutterFlowTheme.of(context).info,
                    checkboxBorderColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                    checkboxBorderRadius: BorderRadius.circular(4.0),
                    initialized: _model.checkboxGroupValues != null,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 80.0,
                        height: 80.0,
                        clipBehavior: Clip.antiAlias,
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
                          widget.selectedSupplier!.availability
                              ? 'Available'
                              : 'Unavailable',
                          'availability',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: widget.selectedSupplier!.availability
                                  ? Colors.green
                                  : const Color(0xFFEF5350),
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget.selectedSupplier?.name,
                            'Supplier Name',
                          ),
                          minFontSize: 14.0,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.selectedSupplier?.country,
                              'country',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(const SizedBox(width: 18.0)),
              ),
            ),
            Divider(
              height: 24.0,
              thickness: 2.0,
              color: FlutterFlowTheme.of(context).primaryBackground,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularPercentIndicator(
                                percent: widget
                                    .selectedSupplier!.sustainabilityIndex,
                                radius: 45.0,
                                lineWidth: 12.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).secondary,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                center: Text(
                                  (double sustain) {
                                    return "${(sustain * 100).round()}%";
                                  }(widget
                                      .selectedSupplier!.sustainabilityIndex),
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
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularPercentIndicator(
                                percent: widget.selectedSupplier!.riskIndex,
                                radius: 45.0,
                                lineWidth: 12.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).secondary,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                center: Text(
                                  (double risk) {
                                    return "${(risk * 100).round()}%";
                                  }(widget.selectedSupplier!.riskIndex),
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
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularPercentIndicator(
                                percent: widget.selectedSupplier!.reliability,
                                radius: 45.0,
                                lineWidth: 12.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).secondary,
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                center: Text(
                                  (double rel) {
                                    return ("${(rel * 100).round()}%");
                                  }(widget.selectedSupplier!.reliability),
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
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                      ],
                    ),
                  ].divide(const SizedBox(height: 60.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
