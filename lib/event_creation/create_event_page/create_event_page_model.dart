import '/components/template_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_event_page_widget.dart' show CreateEventPageWidget;
import 'package:flutter/material.dart';

class CreateEventPageModel extends FlutterFlowModel<CreateEventPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel1;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel2;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel3;
  // Model for TemplateCard component.
  late TemplateCardModel templateCardModel4;

  @override
  void initState(BuildContext context) {
    templateCardModel1 = createModel(context, () => TemplateCardModel());
    templateCardModel2 = createModel(context, () => TemplateCardModel());
    templateCardModel3 = createModel(context, () => TemplateCardModel());
    templateCardModel4 = createModel(context, () => TemplateCardModel());
  }

  @override
  void dispose() {
    templateCardModel1.dispose();
    templateCardModel2.dispose();
    templateCardModel3.dispose();
    templateCardModel4.dispose();
  }
}
