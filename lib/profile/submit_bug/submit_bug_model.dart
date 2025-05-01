import '/flutter_flow/flutter_flow_util.dart';
import 'submit_bug_widget.dart' show SubmitBugWidget;
import 'package:flutter/material.dart';

class SubmitBugModel extends FlutterFlowModel<SubmitBugWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for bugDescription widget.
  FocusNode? bugDescriptionFocusNode;
  TextEditingController? bugDescriptionTextController;
  String? Function(BuildContext, String?)?
      bugDescriptionTextControllerValidator;
  String? _bugDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ka4yqb7g' /* Please enter the bug to report */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    bugDescriptionTextControllerValidator =
        _bugDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    bugDescriptionFocusNode?.dispose();
    bugDescriptionTextController?.dispose();
  }
}
