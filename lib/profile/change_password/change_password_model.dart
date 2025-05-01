import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  String? _newPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'qe3oxfue' /* Please enter your new password */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'ce1pjli8' /* Enter atleast 6 characters */,
      );
    }

    return null;
  }

  // State field(s) for confirmNewPassword widget.
  FocusNode? confirmNewPasswordFocusNode;
  TextEditingController? confirmNewPasswordTextController;
  late bool confirmNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordTextControllerValidator;
  String? _confirmNewPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'z2b21zkx' /* Please enter confirm password */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'pq2gw9p4' /* Enter atleast 6 characters */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    newPasswordVisibility = false;
    newPasswordTextControllerValidator = _newPasswordTextControllerValidator;
    confirmNewPasswordVisibility = false;
    confirmNewPasswordTextControllerValidator =
        _confirmNewPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmNewPasswordFocusNode?.dispose();
    confirmNewPasswordTextController?.dispose();
  }
}
