import '/components/profile_list_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'event_details_widget.dart' show EventDetailsWidget;
import 'package:flutter/material.dart';

class EventDetailsModel extends FlutterFlowModel<EventDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileListTile component.
  late ProfileListTileModel profileListTileModel1;
  // Models for ProfileListTile dynamic component.
  late FlutterFlowDynamicModels<ProfileListTileModel> profileListTileModels2;

  @override
  void initState(BuildContext context) {
    profileListTileModel1 = createModel(context, () => ProfileListTileModel());
    profileListTileModels2 =
        FlutterFlowDynamicModels(() => ProfileListTileModel());
  }

  @override
  void dispose() {
    profileListTileModel1.dispose();
    profileListTileModels2.dispose();
  }
}
