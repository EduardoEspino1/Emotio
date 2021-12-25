import '../auth/auth_util.dart';
import '../bienvenida/bienvenida_widget.dart';
import '../completarperfil/completarperfil_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../olvidocontrasena/olvidocontrasena_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class IniciodsesionWidget extends StatefulWidget {
  const IniciodsesionWidget({Key key}) : super(key: key);

  @override
  _IniciodsesionWidgetState createState() => _IniciodsesionWidgetState();
}

class _IniciodsesionWidgetState extends State<IniciodsesionWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordCreateController;
  TextEditingController emailAddressLoginController;
  TextEditingController passwordLoginController;
  bool passwordLoginVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordCreateController = TextEditingController();
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFAEE2ED),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFFAEE2ED),
                  shape: BoxShape.rectangle,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/IMG_0554-1.png',
                              width: 300,
                              height: 350,
                              fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: FlutterFlowTheme.darkBackground,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.darkBackground,
                                  labelStyle: GoogleFonts.getFont(
                                    'Trocchi',
                                    fontSize: 20,
                                  ),
                                  indicatorColor:
                                      FlutterFlowTheme.darkBackground,
                                  indicatorWeight: 3,
                                  tabs: [
                                    Tab(
                                      text: 'Login',
                                    ),
                                    Tab(
                                      text: 'Registro',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      emailAddressLoginController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Correo Electronico',
                                                    labelStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                    hintText:
                                                        'Ingresa tu correo electronico',
                                                    hintStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .grayLight,
                                                      fontSize: 15,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF5D9FF),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                    prefixIcon: Icon(
                                                      Icons.person_rounded,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: FlutterFlowTheme
                                                        .darkBackground,
                                                    fontSize: 14,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      passwordLoginController,
                                                  obscureText:
                                                      !passwordLoginVisibility,
                                                  decoration: InputDecoration(
                                                    labelText: 'Contraseña',
                                                    labelStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      fontSize: 20,
                                                    ),
                                                    hintText:
                                                        'Ingresa tu contraseña',
                                                    hintStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .grayLight,
                                                      fontSize: 15,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF5D9FF),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                    prefixIcon: Icon(
                                                      Icons.lock,
                                                    ),
                                                    suffixIcon: InkWell(
                                                      onTap: () => setState(
                                                        () => passwordLoginVisibility =
                                                            !passwordLoginVisibility,
                                                      ),
                                                      child: Icon(
                                                        passwordLoginVisibility
                                                            ? Icons
                                                                .visibility_outlined
                                                            : Icons
                                                                .visibility_off_outlined,
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: FlutterFlowTheme
                                                        .darkBackground,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    final user =
                                                        await signInWithEmail(
                                                      context,
                                                      emailAddressLoginController
                                                          .text,
                                                      passwordLoginController
                                                          .text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            BienvenidaWidget(),
                                                      ),
                                                    );
                                                  },
                                                  text: 'Inicio de Sesion',
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 60,
                                                    color: Color(0xFF9073B3),
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: FlutterFlowTheme
                                                          .textColor,
                                                      fontSize: 20,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      width: 5,
                                                    ),
                                                    borderRadius: 8,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            OlvidocontrasenaWidget(),
                                                      ),
                                                    );
                                                  },
                                                  text:
                                                      '¿Olvidaste tu contraseña?',
                                                  options: FFButtonOptions(
                                                    width: 210,
                                                    height: 50,
                                                    color: Color(0xFF9073B3),
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                    ),
                                                    elevation: 0,
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      width: 5,
                                                    ),
                                                    borderRadius: 8,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 10, 0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      emailAddressController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Escribe tu correo',
                                                    labelStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      fontSize: 20,
                                                    ),
                                                    hintText:
                                                        'Ingresa tu correo electronico',
                                                    hintStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: FlutterFlowTheme
                                                          .grayLight,
                                                      fontSize: 15,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF5D9FF),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                    prefixIcon: Icon(
                                                      Icons.person,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Trocchi',
                                                    color: FlutterFlowTheme
                                                        .darkBackground,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 0, 0),
                                                child: TextFormField(
                                                  controller:
                                                      passwordCreateController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Contraseña',
                                                    labelStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      fontSize: 20,
                                                    ),
                                                    hintText:
                                                        'Ingresa tu contraseña',
                                                    hintStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: FlutterFlowTheme
                                                          .grayLight,
                                                      fontSize: 15,
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                            .darkBackground,
                                                        width: 5,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        Color(0xFFF5D9FF),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 24, 20, 24),
                                                    prefixIcon: Icon(
                                                      Icons.lock,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Trocchi',
                                                    color: FlutterFlowTheme
                                                        .darkBackground,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 24, 0, 24),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    final user =
                                                        await createAccountWithEmail(
                                                      context,
                                                      emailAddressController
                                                          .text,
                                                      passwordCreateController
                                                          .text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CompletarperfilWidget(),
                                                      ),
                                                    );
                                                  },
                                                  text: 'Crear cuenta',
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 60,
                                                    color: Color(0xFF9073B3),
                                                    textStyle: FlutterFlowTheme
                                                        .subtitle2
                                                        .override(
                                                      fontFamily: 'Trocchi',
                                                      color: FlutterFlowTheme
                                                          .textColor,
                                                      fontSize: 20,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                          .darkBackground,
                                                      width: 5,
                                                    ),
                                                    borderRadius: 8,
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
                              ],
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
        ],
      ),
    );
  }
}
