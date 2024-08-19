import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'index_metric_model.dart';
export 'index_metric_model.dart';

class IndexMetricWidget extends StatefulWidget {
  const IndexMetricWidget({super.key});

  @override
  State<IndexMetricWidget> createState() => _IndexMetricWidgetState();
}

class _IndexMetricWidgetState extends State<IndexMetricWidget> {
  late IndexMetricModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndexMetricModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x230E151B),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
              child: CircularPercentIndicator(
                percent: 0.93,
                radius: 45.0,
                lineWidth: 12.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: FlutterFlowTheme.of(context).secondary,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                center: Text(
                  '93%',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Text(
              'Course Grade',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
