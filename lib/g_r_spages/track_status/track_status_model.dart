import '/components/track_complaint_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'track_status_widget.dart' show TrackStatusWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TrackStatusModel extends FlutterFlowModel<TrackStatusWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TrackingStatus widget.
  FocusNode? trackingStatusFocusNode;
  TextEditingController? trackingStatusTextController;
  String? Function(BuildContext, String?)?
      trackingStatusTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    trackingStatusFocusNode?.dispose();
    trackingStatusTextController?.dispose();
  }
}
