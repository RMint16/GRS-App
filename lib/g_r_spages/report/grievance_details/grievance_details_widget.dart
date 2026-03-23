import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'grievance_details_model.dart';
export 'grievance_details_model.dart';

class GrievanceDetailsWidget extends StatefulWidget {
  const GrievanceDetailsWidget({super.key});

  static String routeName = 'GrievanceDetails';
  static String routePath = '/grievanceDetails';

  @override
  State<GrievanceDetailsWidget> createState() => _GrievanceDetailsWidgetState();
}

class _GrievanceDetailsWidgetState extends State<GrievanceDetailsWidget> {
  late GrievanceDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GrievanceDetailsModel());

    _model.subjectTextController ??= TextEditingController();
    _model.subjectFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      // 1. STACK is now the absolute base
      child: Stack(
        children: [
          // 2. BACKGROUND LAYER: Locked perfectly to the edges
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                image: Image.asset(
                  'assets/images/ChatGPT_Image_Feb_25,_2026,_11_31_30_PM.png',
                ).image,
              ),
            ),
          ),

          // 3. FOREGROUND LAYER: The actual screen content
          Scaffold(
            key: scaffoldKey,
            // KEY FIX: Transparent background allows the locked image to show through
            backgroundColor: Colors.transparent,

            // 4. SAFE AREA: Protects content from the camera notch and status bar
            body: SafeArea(
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Untitled_design.png',
                                ).image,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Public Grievance Redressal',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                    ),
                                    fontSize: 18.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Help us improve by sharing your concerns.\nEvery report is reviewed with care.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(),
                                  ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 30.0, 16.0, 40.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 15.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              minHeight:
                                  MediaQuery.sizeOf(context).height * 0.60,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 20.0, 16.0, 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.6,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.65,
                                      lineHeight: 10.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xFF0088FF),
                                      backgroundColor: Color(0xAFCECECE),
                                      barRadius: Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/file.png',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Grievance Details',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  fontSize: 18.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.subjectTextController,
                                        focusNode: _model.subjectFocusNode,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Subject',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium,
                                          hintText: 'Brief Summary',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFD9D9D9),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0088FF),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .subjectTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: FlutterFlowDropDown<String>(
                                      controller:
                                          _model.dropDownValueController ??=
                                              FormFieldController<String>(
                                        _model.dropDownValue ??= '',
                                      ),
                                      options: List<String>.from([
                                        'Workplace Harassment',
                                        'Bribery/Corruption',
                                        'Theft',
                                        'Safety Violation',
                                        'Murder',
                                        'Other'
                                      ]),
                                      optionLabels: [
                                        'Workplace Harassment',
                                        'Bribery/Corruption',
                                        'Theft',
                                        'Safety Violation',
                                        'Murder',
                                        'Other'
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.dropDownValue = val),
                                      width: double.infinity,
                                      height: 50.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      hintText: 'Select a Category',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: Color(0xFFD9D9D9),
                                      borderWidth: 1.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      hidesUnderline: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        maxLines: 9,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Description',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium,
                                          hintText: 'Provide details...',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFD9D9D9),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFF0088FF),
                                                width: 1.0),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            ReviewandSubmitWidget.routeName);
                                      },
                                      text: 'Continue',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 45.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        color: Color(0xFF45649E),
                                        textStyle: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                            IdentityDetailsWidget.routeName);
                                      },
                                      text: 'Back',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 45.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        textStyle: GoogleFonts.poppins(
                                          color: Color(0xFF45649E),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Color(0xFF45649E),
                                          width: 1.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
