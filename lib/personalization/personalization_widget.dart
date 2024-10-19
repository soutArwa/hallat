import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'personalization_model.dart';
export 'personalization_model.dart';

class PersonalizationWidget extends StatefulWidget {
  const PersonalizationWidget({super.key});

  @override
  State<PersonalizationWidget> createState() => _PersonalizationWidgetState();
}

class _PersonalizationWidgetState extends State<PersonalizationWidget>
    with TickerProviderStateMixin {
  late PersonalizationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalizationModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.4, 0.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'choiceChipsOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.5, 0.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'choiceChipsOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.5, 0.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'choiceChipsOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.5, 0.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'choiceChipsOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.5, 0.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'choiceChipsOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.5, 0.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.5, 0.5),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: AppBar(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  automaticallyImplyLeading: false,
                  actions: [],
                  centerTitle: false,
                  toolbarHeight: 0.0,
                  elevation: 0.0,
                ),
              )
            : null,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 700.0,
                child: Stack(
                  children: [
                    PageView(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      onPageChanged: (_) => safeSetState(() {}),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 6.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'qyrc4t48' /* Discover Saudi Arabia Your Way... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Urbanist',
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 10.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'rp37hpud' /* Your personalized Saudi Arabia... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 60.0,
                                            icon: Icon(
                                              Icons.navigate_next_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              await _model.pageViewController
                                                  ?.nextPage(
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            },
                                          ).animateOnPageLoad(animationsMap[
                                              'iconButtonOnPageLoadAnimation1']!),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 1.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ngilkt8i' /* Anything specific you want to ... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Urbanist',
                                              fontSize: 25.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation3']!),
                                    ),
                                    Container(
                                      height: 200.0,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: FlutterFlowChoiceChips(
                                          options: [
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'pdpouimn' /* Cultural Heritage */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'xa66nsa3' /* Nature and Adventure */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'ptbp95a2' /* City Exploration */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              'jpfwcyjt' /* Wellness and Relaxation */,
                                            )),
                                            ChipData(FFLocalizations.of(context)
                                                .getText(
                                              '0qxftfaq' /* Family-Friendly Activities */,
                                            ))
                                          ],
                                          onChanged: (val) async {
                                            safeSetState(() =>
                                                _model.choiceChipsValue1 =
                                                    val?.firstOrNull);
                                            FFAppState()
                                                .addToCombinedChoiceValues(
                                                    _model.choiceChipsValue1!);
                                            safeSetState(() {});
                                          },
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      letterSpacing: 0.0,
                                                    ),
                                            iconColor: Color(0xFFEFF2F5),
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderWidth: 2.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      letterSpacing: 0.0,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            iconSize: 18.0,
                                            elevation: 0.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .timberwolf,
                                            borderWidth: 2.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          chipSpacing: 12.0,
                                          rowSpacing: 12.0,
                                          multiselect: false,
                                          alignment: WrapAlignment.start,
                                          controller: _model
                                                  .choiceChipsValueController1 ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ).animateOnPageLoad(animationsMap[
                                            'choiceChipsOnPageLoadAnimation1']!),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 60.0,
                                            icon: Icon(
                                              Icons.navigate_next_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              await _model.pageViewController
                                                  ?.nextPage(
                                                duration:
                                                    Duration(milliseconds: 300),
                                                curve: Curves.ease,
                                              );
                                            },
                                          ).animateOnPageLoad(animationsMap[
                                              'iconButtonOnPageLoadAnimation2']!),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'hy2zcp40' /* How do you prefer to get aroun... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation4']!),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 10.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '0iraoxm5' /* Car */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'gkaelbef' /* public transportation */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'cznhqhl2' /*  guided tours */,
                                        ))
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.choiceChipsValue2 =
                                                val?.firstOrNull);
                                        FFAppState().addToCombinedChoiceValues(
                                            _model.choiceChipsValue2!);
                                        safeSetState(() {});
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: Color(0xFFEFF2F5),
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .timberwolf,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController2 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnPageLoad(animationsMap[
                                        'choiceChipsOnPageLoadAnimation2']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.navigate_next_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            await _model.pageViewController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'iconButtonOnPageLoadAnimation3']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '72yy02vw' /* What kind of accommodations ar... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation5']!),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 10.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '8o1gb77y' /* Hotels */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'k2l9rkvp' /* resorts */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'k37yepk8' /* apartments */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '8a63i2fy' /* traditional guesthouses */,
                                        ))
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.choiceChipsValue3 =
                                                val?.firstOrNull);
                                        FFAppState().addToCombinedChoiceValues(
                                            _model.choiceChipsValue3!);
                                        safeSetState(() {});
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: Color(0xFFEFF2F5),
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .timberwolf,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController3 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnPageLoad(animationsMap[
                                        'choiceChipsOnPageLoadAnimation3']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.navigate_next_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            await _model.pageViewController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'iconButtonOnPageLoadAnimation4']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '0xxhr1m6' /* Traveling alone or with others... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation6']!),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 10.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'vuzhql3p' /* Solo */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'ovisms64' /* Couple */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '7zwl25rw' /* Family */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'rvvvn6gb' /* Group */,
                                        ))
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.choiceChipsValue4 =
                                                val?.firstOrNull);
                                        FFAppState().addToCombinedChoiceValues(
                                            _model.choiceChipsValue4!);
                                        safeSetState(() {});
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: Color(0xFFEFF2F5),
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .timberwolf,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController4 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnPageLoad(animationsMap[
                                        'choiceChipsOnPageLoadAnimation4']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.navigate_next_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            await _model.pageViewController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'iconButtonOnPageLoadAnimation5']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'ezfx8dmy' /* Do you prefer a fast-paced or ... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation7']!),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 10.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '6beuyjgt' /* Fast-paced */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'jkdcixtu' /* Leisurely */,
                                        ))
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.choiceChipsValue5 =
                                                val?.firstOrNull);
                                        FFAppState().addToCombinedChoiceValues(
                                            _model.choiceChipsValue5!);
                                        safeSetState(() {});

                                        await currentUserReference!.update({
                                          ...mapToFirestore(
                                            {
                                              'usertags': FFAppState()
                                                  .combinedChoiceValues,
                                            },
                                          ),
                                        });
                                      },
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: Color(0xFFEFF2F5),
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .timberwolf,
                                        borderWidth: 2.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController5 ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ).animateOnPageLoad(animationsMap[
                                        'choiceChipsOnPageLoadAnimation5']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.navigate_next_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            await _model.pageViewController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'iconButtonOnPageLoadAnimation6']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 11,
                                itemBuilder: (context, index) {
                                  return [
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_1.jpg',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_1.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(16.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(16.0),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/32/600',
                                            width: 100.0,
                                            height: 0.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RiyadhBoulevard.jpg',
                                            width: 80.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/FarasanIslands.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Al-Ula_2.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/TheRedSeaProject.webp',
                                              width: 474.0,
                                              height: 190.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(-0.5, 0.0),
                                            ),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/RijalAlmaa.jpg',
                                            width: 120.0,
                                            height: 160.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Diriyah.jpg',
                                            width: 120.0,
                                            height: 292.0,
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(-0.5, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Tabuk_2.jpg',
                                            width: 120.0,
                                            height: 250.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(0.0, 0.0),
                                          ),
                                        ),
                                    () => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.network(
                                            'https://raw.githubusercontent.com/Danah1989/Hallat/refs/heads/main/assets/Abha.jpg',
                                            width: 120.0,
                                            height: 180.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 20.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '01l0ddf2' /* We’ve got it! Let’s explore… */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Urbanist',
                                              fontSize: 25.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation8']!),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          icon: Icon(
                                            Icons.navigate_next_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            context.pushNamed('HomePage');
                                          },
                                        ).animateOnPageLoad(animationsMap[
                                            'iconButtonOnPageLoadAnimation7']!),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.85, 0.85),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          count: 7,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) async {
                            await _model.pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                            safeSetState(() {});
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 2.0,
                            spacing: 8.0,
                            radius: 16.0,
                            dotWidth: 16.0,
                            dotHeight: 4.0,
                            dotColor: FlutterFlowTheme.of(context).accent1,
                            activeDotColor:
                                FlutterFlowTheme.of(context).primary,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
