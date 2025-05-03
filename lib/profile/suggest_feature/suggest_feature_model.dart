import '/flutter_flow/flutter_flow_util.dart';
import 'suggest_feature_widget.dart' show SuggestFeatureWidget;
import 'package:flutter/material.dart';

class SuggestFeatureModel extends FlutterFlowModel<SuggestFeatureWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for featureDescription widget.
  FocusNode? featureDescriptionFocusNode;
  TextEditingController? featureDescriptionTextController;
  String? Function(BuildContext, String?)?
      featureDescriptionTextControllerValidator;
  String? _featureDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oeemc92a' /* Please enter the bug to report */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    featureDescriptionTextControllerValidator =
        _featureDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    featureDescriptionFocusNode?.dispose();
    featureDescriptionTextController?.dispose();
  }
}
