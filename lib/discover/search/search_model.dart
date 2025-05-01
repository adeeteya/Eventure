import '/components/template_list_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  String? searchQuery;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for TemplateListTile dynamic component.
  late FlutterFlowDynamicModels<TemplateListTileModel> templateListTileModels;

  @override
  void initState(BuildContext context) {
    templateListTileModels =
        FlutterFlowDynamicModels(() => TemplateListTileModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    templateListTileModels.dispose();
  }
}
