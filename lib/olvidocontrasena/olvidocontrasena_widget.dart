import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OlvidocontrasenaWidget extends StatefulWidget {
  const OlvidocontrasenaWidget({Key key}) : super(key: key);

  @override
  _OlvidocontrasenaWidgetState createState() => _OlvidocontrasenaWidgetState();
}

class _OlvidocontrasenaWidgetState extends State<OlvidocontrasenaWidget> {
  TextEditingController emailAddressController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
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
          'Recuperar Contraseña',
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Trocchi',
            color: FlutterFlowTheme.darkBackground,
            fontSize: 25,
            fontWeight: FontWeight.normal,
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
        decoration: BoxDecoration(
          color: Color(0xFFAEE2ED),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.network(
              '',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        'Introduce el correo asociado a tu cuenta y te enviaremos un codigo de verificacion.',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Trocchi',
                          color: FlutterFlowTheme.darkBackground,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: TextFormField(
                onChanged: (_) => EasyDebounce.debounce(
                  'emailAddressController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                controller: emailAddressController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Correo Electronico',
                  labelStyle: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Trocchi',
                    color: FlutterFlowTheme.darkBackground,
                    fontSize: 20,
                  ),
                  hintText: 'Ingresa tu correo electronico',
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
                    Icons.email,
                  ),
                  suffixIcon: emailAddressController.text.isNotEmpty
                      ? InkWell(
                          onTap: () => setState(
                            () => emailAddressController.clear(),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: FlutterFlowTheme.darkBackground,
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Trocchi',
                  color: FlutterFlowTheme.darkBackground,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button-Login pressed ...');
                },
                text: 'Enviar Link',
                icon: Icon(
                  Icons.send,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: 230,
                  height: 60,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
