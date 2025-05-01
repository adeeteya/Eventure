import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_template_page_widget.dart' show EditTemplatePageWidget;
import 'package:flutter/material.dart';

class EditTemplatePageModel extends FlutterFlowModel<EditTemplatePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Header widget.
  FocusNode? headerFocusNode;
  TextEditingController? headerTextController;
  String? Function(BuildContext, String?)? headerTextControllerValidator;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for DateTime widget.
  FocusNode? dateTimeFocusNode;
  TextEditingController? dateTimeTextController;
  String? Function(BuildContext, String?)? dateTimeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    headerFocusNode?.dispose();
    headerTextController?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    dateTimeFocusNode?.dispose();
    dateTimeTextController?.dispose();
  }
}
