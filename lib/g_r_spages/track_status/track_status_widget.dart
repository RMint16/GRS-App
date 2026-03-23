import '/components/track_complaint_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'track_status_model.dart';
export 'track_status_model.dart';

class TrackStatusWidget extends StatefulWidget {
  const TrackStatusWidget({super.key});

  static String routeName = 'TrackStatus';
  static String routePath = '/trackStatus';

  @override
  State<TrackStatusWidget> createState() => _TrackStatusWidgetState();
}

class _TrackStatusWidgetState extends State<TrackStatusWidget> {
  late TrackStatusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackStatusModel());

    _model.trackingStatusTextController ??= TextEditingController();
    _model.trackingStatusFocusNode ??= FocusNode();
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
                  'assets/images/ChatGPT_Image_Feb_25,_2026,_02_52_11_PM.png',
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
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Placed back button inside a Row to naturally align it left
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.arrow_back,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(WelcomePageWidget.routeName);
                            },
                          ),
                        ],
                      ),

                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          'Track your \nComplaint',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                    ),
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),

                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Enter your tracking code to see live updates',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(),
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),

                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xCBFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                  spreadRadius: 1.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 40.0, 16.0, 40.0),
                              child: Column(
                                mainAxisSize: MainAxisSize
                                    .min, // Hugs the contents tightly
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller:
                                          _model.trackingStatusTextController,
                                      focusNode: _model.trackingStatusFocusNode,
                                      autofocus: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        hintText: 'e.g. #GRS-XXXX-XXXXXX',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFD9D9D9),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0088FF),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .trackingStatusTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: TrackComplaintWidget(),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      text: 'Check Status',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 45.0,
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
