import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'enter_event_details_widget.dart' show EnterEventDetailsWidget;
import 'package:flutter/material.dart';

class EnterEventDetailsModel extends FlutterFlowModel<EnterEventDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for eventTitleInputField widget.
  FocusNode? eventTitleInputFieldFocusNode;
  TextEditingController? eventTitleInputFieldTextController;
  String? Function(BuildContext, String?)?
      eventTitleInputFieldTextControllerValidator;
  String? _eventTitleInputFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '59e50ysk' /* Enter event title is required */,
      );
    }

    return null;
  }

  // State field(s) for eventTypeDropdown widget.
  String? eventTypeDropdownValue;
  FormFieldController<String>? eventTypeDropdownValueController;
  // State field(s) for eventDescription widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionTextController;
  String? Function(BuildContext, String?)?
      eventDescriptionTextControllerValidator;
  String? _eventDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9x943pex' /* Write your event description i... */,
      );
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for locationInputField widget.
  FocusNode? locationInputFieldFocusNode;
  TextEditingController? locationInputFieldTextController;
  String? Function(BuildContext, String?)?
      locationInputFieldTextControllerValidator;
  String? _locationInputFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mwqacjn7' /* Location is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    eventTitleInputFieldTextControllerValidator =
        _eventTitleInputFieldTextControllerValidator;
    eventDescriptionTextControllerValidator =
        _eventDescriptionTextControllerValidator;
    locationInputFieldTextControllerValidator =
        _locationInputFieldTextControllerValidator;
  }

  @override
  void dispose() {
    eventTitleInputFieldFocusNode?.dispose();
    eventTitleInputFieldTextController?.dispose();

    eventDescriptionFocusNode?.dispose();
    eventDescriptionTextController?.dispose();

    locationInputFieldFocusNode?.dispose();
    locationInputFieldTextController?.dispose();
  }
}
