import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'customize_template_page_widget.dart' show CustomizeTemplatePageWidget;
import 'package:flutter/material.dart';

class CustomizeTemplatePageModel
    extends FlutterFlowModel<CustomizeTemplatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for templateHeaderInput widget.
  FocusNode? templateHeaderInputFocusNode;
  TextEditingController? templateHeaderInputTextController;
  String? Function(BuildContext, String?)?
      templateHeaderInputTextControllerValidator;
  String? _templateHeaderInputTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oea4yo1o' /* Please enter the header text */,
      );
    }

    return null;
  }

  // State field(s) for templateBodyInput widget.
  FocusNode? templateBodyInputFocusNode;
  TextEditingController? templateBodyInputTextController;
  String? Function(BuildContext, String?)?
      templateBodyInputTextControllerValidator;
  String? _templateBodyInputTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fkewszib' /* Please enter the body text */,
      );
    }

    return null;
  }

  // State field(s) for templateFooterInput widget.
  FocusNode? templateFooterInputFocusNode;
  TextEditingController? templateFooterInputTextController;
  String? Function(BuildContext, String?)?
      templateFooterInputTextControllerValidator;
  String? _templateFooterInputTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'olx1ko1d' /* Please enter the footer text */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    templateHeaderInputTextControllerValidator =
        _templateHeaderInputTextControllerValidator;
    templateBodyInputTextControllerValidator =
        _templateBodyInputTextControllerValidator;
    templateFooterInputTextControllerValidator =
        _templateFooterInputTextControllerValidator;
  }

  @override
  void dispose() {
    templateHeaderInputFocusNode?.dispose();
    templateHeaderInputTextController?.dispose();

    templateBodyInputFocusNode?.dispose();
    templateBodyInputTextController?.dispose();

    templateFooterInputFocusNode?.dispose();
    templateFooterInputTextController?.dispose();
  }
}
