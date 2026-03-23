import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_page_model.dart';
export 'welcome_page_model.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({super.key});

  static String routeName = 'WelcomePage';
  static String routePath = '/welcomePage';

  @override
  State<WelcomePageWidget> createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget> {
  late WelcomePageModel _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomePageModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        resizeToAvoidBottomInset: true,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/ChatGPT_Image_Feb_25,_2026,_08_22_00_AM.png',
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // 1. Logo and Title Header
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Untitled_design.png',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'GRS',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Text(
                        'Grievance Redress System',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              ),

              // 2. Large Spacer to push the welcome text down past the illustration
              const Spacer(flex: 7),

              // 3. Welcome Text Block (Positioned in the circled gap)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Welcome !',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 5.0, 16.0, 0.0),
                      child: Text(
                        'Submit complaints securely and track their status with ease',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),

              // 4. Small spacer to give breathing room above the buttons
              const Spacer(flex: 2),
            ],
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            height: 80.0,
            decoration: const BoxDecoration(
              color: Color(0xFF45649E),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(IdentityDetailsWidget.routeName);
                    },
                    child: Center(
                      child: Text(
                        'Report Now',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(TrackStatusWidget.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Track Status',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF45649E),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
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
    );
  }
}
