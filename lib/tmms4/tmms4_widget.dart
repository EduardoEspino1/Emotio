import '../agradecimiento/agradecimiento_widget.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Tmms4Widget extends StatefulWidget {
  const Tmms4Widget({Key key}) : super(key: key);

  @override
  _Tmms4WidgetState createState() => _Tmms4WidgetState();
}

class _Tmms4WidgetState extends State<Tmms4Widget> {
  String radioButtonValue1;
  String radioButtonValue2;
  String radioButtonValue3;
  String radioButtonValue4;
  String radioButtonValue5;
  String radioButtonValue6;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFAEE2ED),
        automaticallyImplyLeading: false,
        title: Text(
          'Test TMMS-24',
          style: FlutterFlowTheme.title1.override(
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                          child: Text(
                            'Cuando estoy triste, pienso en todos los\nplaceres de la vida.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Trocchi',
                              color: FlutterFlowTheme.darkBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['1', '2', '3', '4', '5'],
                      onChanged: (value) {
                        setState(() => radioButtonValue1 = value);
                      },
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                          child: Text(
                            'Intento tener pensamientos positivos\naunque me sienta mal.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Trocchi',
                              color: FlutterFlowTheme.darkBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['1', '2', '3', '4', '5'],
                      onChanged: (value) {
                        setState(() => radioButtonValue2 = value);
                      },
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                          child: Text(
                            'Si doy demasiadas vueltas a las cosas.\ncomplicándolas, trato de calmarme.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Trocchi',
                              color: FlutterFlowTheme.darkBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['1', '2', '3', '4', '5'],
                      onChanged: (value) {
                        setState(() => radioButtonValue3 = value);
                      },
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                          child: Text(
                            'Me preocupo por tener un buen\nestado de ánimo.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Trocchi',
                              color: FlutterFlowTheme.darkBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['1', '2', '3', '4', '5'],
                      onChanged: (value) {
                        setState(() => radioButtonValue4 = value);
                      },
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                          child: Text(
                            'Tengo mucha energía cuando\nme siento feliz.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Trocchi',
                              color: FlutterFlowTheme.darkBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['1', '2', '3', '4', '5'],
                      onChanged: (value) {
                        setState(() => radioButtonValue5 = value);
                      },
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                          child: Text(
                            'Cuando estoy enfadado intento cambiar\nmi estado de ánimo.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Trocchi',
                              color: FlutterFlowTheme.darkBackground,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['1', '2', '3', '4', '5'],
                      onChanged: (value) {
                        setState(() => radioButtonValue6 = value);
                      },
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Trocchi',
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AgradecimientoWidget(),
                        ),
                      );
                    },
                    text: '',
                    icon: FaIcon(
                      FontAwesomeIcons.arrowCircleRight,
                      color: FlutterFlowTheme.darkBackground,
                      size: 80,
                    ),
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFFAEE2ED),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      borderSide: BorderSide(
                        color: Color(0xFFAEE2ED),
                        width: 0,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
