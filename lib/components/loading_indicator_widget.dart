import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'loading_indicator_model.dart';
export 'loading_indicator_model.dart';

class LoadingIndicatorWidget extends StatefulWidget {
  const LoadingIndicatorWidget({super.key});

  @override
  State<LoadingIndicatorWidget> createState() => _LoadingIndicatorWidgetState();
}

class _LoadingIndicatorWidgetState extends State<LoadingIndicatorWidget> {
  late LoadingIndicatorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingIndicatorModel());

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
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: custom_widgets.LoadingIndicator(
          width: double.infinity,
          height: double.infinity,
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
    );
  }
}
