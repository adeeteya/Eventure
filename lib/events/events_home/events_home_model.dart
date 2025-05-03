import '/components/side_bar_widget.dart';
import '/components/template_list_tile_widget.dart';
import '/components/template_loading_list_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'events_home_widget.dart' show EventsHomeWidget;
import 'package:flutter/material.dart';

class EventsHomeModel extends FlutterFlowModel<EventsHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for TemplateListTile dynamic component.
  late FlutterFlowDynamicModels<TemplateListTileModel> templateListTileModels;
  // Models for TemplateLoadingListTile dynamic component.
  late FlutterFlowDynamicModels<TemplateLoadingListTileModel>
      templateLoadingListTileModels;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    templateListTileModels =
        FlutterFlowDynamicModels(() => TemplateListTileModel());
    templateLoadingListTileModels =
        FlutterFlowDynamicModels(() => TemplateLoadingListTileModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
    tabBarController?.dispose();
    templateListTileModels.dispose();
    templateLoadingListTileModels.dispose();
  }
}
