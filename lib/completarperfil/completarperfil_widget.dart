import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../bienvenido/bienvenido_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletarperfilWidget extends StatefulWidget {
  const CompletarperfilWidget({Key key}) : super(key: key);

  @override
  _CompletarperfilWidgetState createState() => _CompletarperfilWidgetState();
}

class _CompletarperfilWidgetState extends State<CompletarperfilWidget>
    with TickerProviderStateMixin {
  String radioButtonValue;
  TextEditingController yourAgeController;
  TextEditingController yourNameController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'circleImageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      slideOffset: Offset(0, -19),
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 50,
      fadeIn: true,
      slideOffset: Offset(0, -20),
    ),
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 100,
      fadeIn: true,
      slideOffset: Offset(0, -20),
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 200,
      fadeIn: true,
      slideOffset: Offset(0, -40),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 250,
      fadeIn: true,
      slideOffset: Offset(0, -50),
    ),
    'radioButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 300,
      fadeIn: true,
      slideOffset: Offset(0, -50),
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 400,
      fadeIn: true,
      slideOffset: Offset(0, -40),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    yourAgeController = TextEditingController();
    yourNameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFAEE2ED),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.darkBackground,
            size: 32,
          ),
        ),
        title: Text(
          'Perfil',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Trocchi',
            color: FlutterFlowTheme.darkBackground,
            fontSize: 25,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFAEE2ED),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/IMG_3138.png',
                ),
              ).animated([animationsMap['circleImageOnPageLoadAnimation']]),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Ingresa una foto de perfil',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Trocchi',
                    color: FlutterFlowTheme.darkBackground,
                    fontSize: 20,
                  ),
                ).animated([animationsMap['textOnPageLoadAnimation1']]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  controller: yourNameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    labelStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Trocchi',
                      color: FlutterFlowTheme.darkBackground,
                      fontSize: 20,
                    ),
                    hintText: 'Ingresar tu nombre',
                    hintStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Trocchi',
                      color: FlutterFlowTheme.grayLight,
                      fontSize: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.darkBackground,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.darkBackground,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5D9FF),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    prefixIcon: Icon(
                      Icons.face,
                    ),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Trocchi',
                    color: FlutterFlowTheme.darkBackground,
                    fontSize: 20,
                  ),
                ).animated([animationsMap['textFieldOnPageLoadAnimation1']]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: TextFormField(
                  controller: yourAgeController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Edad',
                    labelStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Trocchi',
                      color: FlutterFlowTheme.darkBackground,
                      fontSize: 20,
                    ),
                    hintText: 'Ingresa tu edad',
                    hintStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Trocchi',
                      color: FlutterFlowTheme.grayLight,
                      fontSize: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.darkBackground,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.darkBackground,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5D9FF),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                    prefixIcon: Icon(
                      Icons.contact_page,
                    ),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Trocchi',
                    color: FlutterFlowTheme.darkBackground,
                  ),
                  keyboardType: TextInputType.number,
                ).animated([animationsMap['textFieldOnPageLoadAnimation2']]),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Sexo',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: FlutterFlowTheme.darkBackground,
                        fontSize: 20,
                      ),
                    ).animated([animationsMap['textOnPageLoadAnimation2']]),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowRadioButton(
                      options: ['Hombre', 'Mujer', 'Sin Definir'],
                      onChanged: (value) {
                        setState(() => radioButtonValue = value);
                      },
                      optionHeight: 25,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: FlutterFlowTheme.darkBackground,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: FlutterFlowTheme.darkBackground,
                      inactiveRadioButtonColor: FlutterFlowTheme.darkBackground,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ).animated(
                        [animationsMap['radioButtonOnPageLoadAnimation']]),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: StreamBuilder<UsersRecord>(
                  stream: UsersRecord.getDocument(currentUserReference),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: SpinKitPumpingHeart(
                            color: FlutterFlowTheme.primaryColor,
                            size: 40,
                          ),
                        ),
                      );
                    }
                    final buttonLoginUsersRecord = snapshot.data;
                    return FFButtonWidget(
                      onPressed: () async {
                        final usersUpdateData = createUsersRecordData(
                          displayName: yourNameController.text,
                          age: int.parse(yourAgeController.text),
                          userSex: radioButtonValue,
                        );
                        await buttonLoginUsersRecord.reference
                            .update(usersUpdateData);
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BienvenidoWidget(),
                          ),
                        );
                      },
                      text: 'Completar perfil',
                      options: FFButtonOptions(
                        width: 230,
                        height: 56,
                        color: Color(0xFF9073B3),
                        textStyle: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Trocchi',
                          color: FlutterFlowTheme.textColor,
                          fontSize: 20,
                        ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.darkBackground,
                          width: 5,
                        ),
                        borderRadius: 8,
                      ),
                    ).animated([animationsMap['buttonOnPageLoadAnimation']]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
