import '/components/report_received_n_a_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'reviewand_submit_widget.dart' show ReviewandSubmitWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ReviewandSubmitModel extends FlutterFlowModel<ReviewandSubmitWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadMedia = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadMedia = [];

  bool isDataUploading_uploadFiles = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadFiles = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
