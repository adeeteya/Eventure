import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'empty_discover_page_component_model.dart';
export 'empty_discover_page_component_model.dart';

class EmptyDiscoverPageComponentWidget extends StatefulWidget {
  const EmptyDiscoverPageComponentWidget({super.key});

  @override
  State<EmptyDiscoverPageComponentWidget> createState() =>
      _EmptyDiscoverPageComponentWidgetState();
}

class _EmptyDiscoverPageComponentWidgetState
    extends State<EmptyDiscoverPageComponentWidget> {
  late EmptyDiscoverPageComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyDiscoverPageComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/jsons/Animation_-_1746274076554.json',
            width: 200.0,
            height: 200.0,
            fit: BoxFit.contain,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 450.0,
              ),
              decoration: BoxDecoration(),
              child: Text(
                FFLocalizations.of(context).getText(
                  '1afgb8kz' /* No events matching the selecte... */,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineLarge
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineLarge
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
