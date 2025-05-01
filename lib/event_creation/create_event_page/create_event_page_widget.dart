import '/components/template_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'create_event_page_model.dart';
export 'create_event_page_model.dart';

class CreateEventPageWidget extends StatefulWidget {
  const CreateEventPageWidget({super.key});

  static String routeName = 'CreateEventPage';
  static String routePath = '/createEventPage';

  @override
  State<CreateEventPageWidget> createState() => _CreateEventPageWidgetState();
}

class _CreateEventPageWidgetState extends State<CreateEventPageWidget> {
  late CreateEventPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateEventPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.goNamed(
                HomeWidget.routeName,
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 350),
                  ),
                },
              );
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'hx95pplf' /* Create Event */,
            ),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                ),
          ),
          actions: [],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(3.0),
            child: LinearPercentIndicator(
              percent: 0.25,
              width: MediaQuery.sizeOf(context).width,
              lineHeight: 3.0,
              animation: true,
              animateFromLastPercent: true,
              progressColor: Colors.green,
              backgroundColor: Color(0xFFD9D9D9),
              padding: EdgeInsets.zero,
            ),
          ),
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '2b9u19wh' /* Select a template */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 2;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 6;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 6;
                          } else {
                            return 4;
                          }
                        }(),
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 0.5;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 0.6;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 0.8;
                          } else {
                            return 0.8;
                          }
                        }(),
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        wrapWithModel(
                          model: _model.templateCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplateCardWidget(
                            templateId: 0,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.templateCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplateCardWidget(
                            templateId: 1,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.templateCardModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplateCardWidget(
                            templateId: 2,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.templateCardModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: TemplateCardWidget(
                            templateId: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
