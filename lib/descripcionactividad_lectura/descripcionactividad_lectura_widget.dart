import '../backend/backend.dart';
import '../components/lectura_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DescripcionactividadLecturaWidget extends StatefulWidget {
  const DescripcionactividadLecturaWidget({
    Key key,
    this.appointmentDetails,
  }) : super(key: key);

  final DocumentReference appointmentDetails;

  @override
  _DescripcionactividadLecturaWidgetState createState() =>
      _DescripcionactividadLecturaWidgetState();
}

class _DescripcionactividadLecturaWidgetState
    extends State<DescripcionactividadLecturaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AppointmentsRecord>(
      stream: AppointmentsRecord.getDocument(widget.appointmentDetails),
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
        final descripcionactividadLecturaAppointmentsRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFFAFE3EB),
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
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: Color(0xFFAFE3EB),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<AppointmentsRecord>(
                      stream: AppointmentsRecord.getDocument(
                          descripcionactividadLecturaAppointmentsRecord
                              .reference),
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
                        final containerAppointmentsRecord = snapshot.data;
                        return Material(
                          color: Colors.transparent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 500,
                            decoration: BoxDecoration(
                              color: Color(0xFFAFE3EB),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/BEC2B189-641D-4B12-9E35-7FAB8FD65F01.png',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: FlutterFlowTheme.darkBackground,
                                width: 2,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 28, 0, 36),
                child: FFButtonWidget(
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            height: 720,
                            child: LecturaWidget(),
                          ),
                        );
                      },
                    );
                  },
                  text: 'Realizar lectura',
                  options: FFButtonOptions(
                    width: 300,
                    height: 60,
                    color: Color(0xFFF5D9FF),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Trocchi',
                      color: FlutterFlowTheme.darkBackground,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.darkBackground,
                      width: 5,
                    ),
                    borderRadius: 8,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 36),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Regresar',
                  options: FFButtonOptions(
                    width: 230,
                    height: 50,
                    color: Color(0xFF9073B3),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Lexend Deca',
                      color: FlutterFlowTheme.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                    elevation: 2,
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
        );
      },
    );
  }
}
