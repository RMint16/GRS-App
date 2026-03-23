import '/components/report_received_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'reviewand_submit_model.dart';
export 'reviewand_submit_model.dart';

class ReviewandSubmitWidget extends StatefulWidget {
  const ReviewandSubmitWidget({super.key});

  static String routeName = 'ReviewandSubmit';
  static String routePath = '/reviewandSubmit';

  @override
  State<ReviewandSubmitWidget> createState() => _ReviewandSubmitWidgetState();
}

class _ReviewandSubmitWidgetState extends State<ReviewandSubmitWidget> {
  late ReviewandSubmitModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewandSubmitModel());
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
              child: SingleChildScrollView(
                // Universal padding for the whole screen
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Center the logo properly
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                    const SizedBox(height: 10.0),
                    Text(
                      'Public Grievance Redressal',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                            ),
                            fontSize: 18.0,
                          ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Help us improve by sharing your concerns.\nEvery report is reviewed with care.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(),
                          ),
                    ),
                    const SizedBox(height: 30.0),

                    // The Fluid White Card
                    Material(
                      color: Colors.transparent,
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Container(
                        width: double
                            .infinity, // Stretches to fit phone width automatically
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(
                              20.0), // Inner padding for the card
                          child: Column(
                            mainAxisSize:
                                MainAxisSize.min, // Hugs the content tightly
                            children: [
                              LinearPercentIndicator(
                                percent: 1.0,
                                // Responsive width: screen width minus padding
                                width: MediaQuery.of(context).size.width - 80,
                                lineHeight: 10.0,
                                animation: true,
                                progressColor: const Color(0xFF0088FF),
                                backgroundColor: const Color(0xAFCECECE),
                                barRadius: const Radius.circular(20.0),
                                padding: EdgeInsets.zero,
                              ),
                              const SizedBox(height: 25.0),
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/upload.png',
                                      width: 40.0,
                                      height: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Text(
                                    'Review & Submit',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          fontSize: 18.0,
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20.0),

                              // Upload Area
                              InkWell(
                                onTap: () async {
                                  // Your upload logic here (kept exact same as your code)
                                },
                                child: Container(
                                  width:
                                      double.infinity, // Make the dropzone wide
                                  height:
                                      120.0, // Better proportions for an upload box
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: const Color(0xFFD9D9D9),
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.file_upload_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 32.0,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        'Upload Files (JPG, PNG, PDF)',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                              ),
                                              fontSize: 16.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40.0),

                              // Submit Button (Text Style Fixed)
                              FFButtonWidget(
                                onPressed: () async {
                                  // Your dialog logic here
                                },
                                text: 'Submit Report',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0, // Thicker button
                                  color: const Color(0xFF45649E),
                                  textStyle: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              const SizedBox(height: 15.0),

                              // Back Button (Text Style Fixed)
                              FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                      GrievanceDetailsWidget.routeName);
                                },
                                text: 'Back',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: GoogleFonts.poppins(
                                    color: const Color(0xFF45649E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Color(0xFF45649E),
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
