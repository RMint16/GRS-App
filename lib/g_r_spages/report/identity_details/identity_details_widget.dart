import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'identity_details_model.dart';
export 'identity_details_model.dart';

class IdentityDetailsWidget extends StatefulWidget {
  const IdentityDetailsWidget({super.key});

  static String routeName = 'IdentityDetails';
  static String routePath = '/identityDetails';

  @override
  State<IdentityDetailsWidget> createState() => _IdentityDetailsWidgetState();
}

class _IdentityDetailsWidgetState extends State<IdentityDetailsWidget> {
  late IdentityDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IdentityDetailsModel());

    _model.fullNameTextController ??= TextEditingController();
    _model.fullNameFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  // UPDATED: Added an 'isEnabled' parameter to handle the visual grey-out effect
  InputDecoration _buildInputDecoration(
      BuildContext context, String label, String hint, IconData icon,
      {bool isEnabled = true}) {
    return InputDecoration(
      isDense: true,
      labelText: label,
      labelStyle: FlutterFlowTheme.of(context)
          .titleMedium
          .override(font: GoogleFonts.poppins()),
      hintText: hint,
      hintStyle: FlutterFlowTheme.of(context)
          .labelMedium
          .override(font: GoogleFonts.poppins()),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFD9D9D9), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFF0088FF), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFE0E0E0), width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: FlutterFlowTheme.of(context).error, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: FlutterFlowTheme.of(context).error, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      filled: true,
      // Change color based on whether the field is enabled or not
      fillColor: isEnabled
          ? FlutterFlowTheme.of(context).secondaryBackground
          : const Color(0xFFF5F5F5), // Light grey when disabled
      prefixIcon: Icon(icon,
          color: isEnabled
              ? FlutterFlowTheme.of(context).secondaryText
              : const Color(0xFFBDBDBD)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Stack(
        children: [
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
          Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FlutterFlowIconButton(
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
                        ),
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
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Material(
                        color: Colors.transparent,
                        elevation: 15.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                LinearPercentIndicator(
                                  percent: 0.3,
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
                                        'assets/images/image-removebg-preview.png',
                                        width: 40.0,
                                        height: 40.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Text(
                                      'Who are you?',
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
                                const SizedBox(height: 25.0),

                                // Full Name Text Field
                                TextFormField(
                                  controller: _model.fullNameTextController,
                                  focusNode: _model.fullNameFocusNode,
                                  enabled: !_model
                                      .isAnonymous, // Disables field if anonymous
                                  decoration: _buildInputDecoration(
                                    context,
                                    'Full Name',
                                    'John Doe',
                                    Icons.person,
                                    isEnabled: !_model
                                        .isAnonymous, // Triggers visual grey-out
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          color: !_model.isAnonymous
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : const Color(0xFF9E9E9E),
                                        ),
                                      ),
                                  validator: _model
                                      .fullNameTextControllerValidator
                                      .asValidator(context),
                                ),
                                const SizedBox(height: 20.0),

                                // Email Text Field
                                TextFormField(
                                  controller: _model.emailTextController,
                                  focusNode: _model.emailFocusNode,
                                  enabled: !_model
                                      .isAnonymous, // Disables field if anonymous
                                  decoration: _buildInputDecoration(
                                    context,
                                    'Email',
                                    'john@example.com',
                                    Icons.mail_outline,
                                    isEnabled: !_model
                                        .isAnonymous, // Triggers visual grey-out
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          color: !_model.isAnonymous
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryText
                                              : const Color(0xFF9E9E9E),
                                        ),
                                      ),
                                  validator: _model.emailTextControllerValidator
                                      .asValidator(context),
                                ),
                                const SizedBox(height: 25.0),

                                // Responsive Checkbox Container
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                        color: const Color(0xFFD9D9D9)),
                                  ),
                                  child: Row(
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor: Colors.black,
                                        ),
                                        child: Checkbox(
                                          value: _model.isAnonymous,
                                          onChanged: (newValue) async {
                                            // Sets the model state and triggers a rebuild to disable fields
                                            setState(() =>
                                                _model.isAnonymous = newValue!);
                                          },
                                          activeColor: Colors.black,
                                          checkColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'I want to stay anonymous',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                            ),
                                            const SizedBox(height: 2.0),
                                            Text(
                                              'Your identity will be hidden from reviewers.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(),
                                                    color:
                                                        const Color(0xFF070708),
                                                    fontSize: 12.0,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 35.0),

                                // Continue Button
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                        GrievanceDetailsWidget.routeName);
                                  },
                                  text: 'Continue',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 50.0,
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
        ],
      ),
    );
  }
}
