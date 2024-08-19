import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_table_model.dart';
export 'empty_table_model.dart';

class EmptyTableWidget extends StatefulWidget {
  const EmptyTableWidget({super.key});

  @override
  State<EmptyTableWidget> createState() => _EmptyTableWidgetState();
}

class _EmptyTableWidgetState extends State<EmptyTableWidget> {
  late EmptyTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyTableModel());

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
      decoration: const BoxDecoration(),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'No results found!',
          style: FlutterFlowTheme.of(context).displaySmall.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
