import '/components/side_bar_widget.dart';
import '/components/template_list_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'discover_widget.dart' show DiscoverWidget;
import 'package:flutter/material.dart';

class DiscoverModel extends FlutterFlowModel<DiscoverWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // Models for TemplateListTile dynamic component.
  late FlutterFlowDynamicModels<TemplateListTileModel> templateListTileModels;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    templateListTileModels =
        FlutterFlowDynamicModels(() => TemplateListTileModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    templateListTileModels.dispose();
  }
}
