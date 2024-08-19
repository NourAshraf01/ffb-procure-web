import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/empty_table_widget.dart';
import '/components/loading_indicator_widget.dart';
import '/components/modals_extra/modal_create_new_project/modal_create_new_project_widget.dart';
import '/components/table_details/project/project_detail/project_detail_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'project_list_model.dart';
export 'project_list_model.dart';

class ProjectListWidget extends StatefulWidget {
  const ProjectListWidget({super.key});

  @override
  State<ProjectListWidget> createState() => _ProjectListWidgetState();
}

class _ProjectListWidgetState extends State<ProjectListWidget> {
  late ProjectListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectListModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.projectQuery = await BatteryAPIGroup.getProjectsCall.call();

      _model.projectData = ((_model.projectQuery?.jsonBody ?? '')
              .toList()
              .map<ProjectStruct?>(ProjectStruct.maybeFromMap)
              .toList() as Iterable<ProjectStruct?>)
          .withoutNulls
          .toList()
          .cast<ProjectStruct>();
      _model.queryFetched = true;
      setState(() {});
      _model.paginatedDataTableController.paginatorController
          .setRowsPerPage(random_data.randomInteger(10, 10));
    });

    _model.materialSearchTextController ??= TextEditingController();
    _model.materialSearchFocusNode ??= FocusNode();

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
                            'Projects List',
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
                          controller: _model.materialSearchTextController,
                          focusNode: _model.materialSearchFocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.materialSearchTextController',
                            const Duration(milliseconds: 1000),
                            () async {
                              _model.projectlSearchResults = functions
                                  .searchTable(
                                      _model.projectData
                                          .map((e) => e.toMap())
                                          .toList(),
                                      _model.materialSearchTextController.text)
                                  .map((e) => ProjectStruct.maybeFromMap(e))
                                  .withoutNulls
                                  .toList()
                                  .cast<ProjectStruct>();
                              setState(() {});
                            },
                          ),
                          autofocus: false,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Search projects...',
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
                              .materialSearchTextControllerValidator
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
                              child: const ModalCreateNewProjectWidget(),
                            );
                          },
                        );
                      },
                      text: 'Add Project',
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
                          final project =
                              (_model.materialSearchTextController
                                                  .text !=
                                              ''
                                      ? _model.projectlSearchResults
                                      : _model.projectData)
                                  .toList();
                          if (project.isEmpty) {
                            return const Center(
                              child: EmptyTableWidget(),
                            );
                          }

                          return FlutterFlowDataTable<ProjectStruct>(
                            controller: _model.paginatedDataTableController,
                            data: project,
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
                                fixedWidth: 90.0,
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    'Partner',
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
                                    'Start Date',
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
                                    'End Date',
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
                                    'Products',
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
                            dataRowBuilder: (projectItem, projectIndex,
                                    selected, onSelectChanged) =>
                                DataRow(
                              color: WidgetStateProperty.all(
                                projectIndex % 2 == 0
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
                                            child: ProjectDetailWidget(
                                              project: projectItem,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      valueOrDefault<String>(
                                        projectItem.id.toString(),
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
                                Text(
                                  valueOrDefault<String>(
                                    projectItem.partner,
                                    'Default Partner Name',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  '${projectItem.startWeek.toString()}_${projectItem.startYear.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  '${projectItem.endWeek.toString()}_${projectItem.endYear.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
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
                                            child: ProjectDetailWidget(
                                              project: projectItem,
                                              initialIndex: 1,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      '${projectItem.productCount.toString()} Products',
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
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 34.0,
                                      icon: Icon(
                                        Icons.delete_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 20.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ].divide(const SizedBox(width: 10.0)),
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
