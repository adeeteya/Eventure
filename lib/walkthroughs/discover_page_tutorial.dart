import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_text_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Focus widget keys for this walkthrough
final iconButton9bfvpzgq = GlobalKey();
final iconButtonO2f2zme3 = GlobalKey();
final container81q3tod4 = GlobalKey();

/// Discover Page Tutorial
///
/// Walkthrough of the discover screen
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// SearchIcon: Search Icon
      TargetFocus(
        keyTarget: iconButton9bfvpzgq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.Circle,
        color: Color(0x00000000),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughTextWidget(
              text: FFLocalizations.of(context).getText(
                'vfy6j66v' /* Click here to search an event ... */,
              ),
            ),
          ),
        ],
      ),

      /// FilterIcon: Filter Icon
      TargetFocus(
        keyTarget: iconButtonO2f2zme3,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.Circle,
        color: Color(0x00000000),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughTextWidget(
              text: FFLocalizations.of(context).getText(
                'pqqgyrav' /* You could also filter the even... */,
              ),
            ),
          ),
        ],
      ),

      /// Event Card: Event Card Tutorial
      TargetFocus(
        keyTarget: container81q3tod4,
        enableOverlayTab: true,
        alignSkip: Alignment.topCenter,
        shape: ShapeLightFocus.RRect,
        color: Color(0x00000000),
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => WalkthroughTextWidget(
              text: 'Click here to view more details of the event.',
            ),
          ),
        ],
      ),
    ];
