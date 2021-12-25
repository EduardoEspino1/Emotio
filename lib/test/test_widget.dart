import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../tmms/tmms_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFAFE3EB),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 400,
              height: 600,
              decoration: BoxDecoration(
                color: Color(0xFFAFE3EB),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: Image.asset(
                    'assets/images/9FEE6413-F20B-4A41-81DA-17E73E476ADE.png',
                  ).image,
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TmmsWidget(),
                  ),
                );
              },
              text: '',
              icon: FaIcon(
                FontAwesomeIcons.arrowCircleRight,
                size: 70,
              ),
              options: FFButtonOptions(
                width: 350,
                height: 100,
                color: Color(0xFFAFE3EB),
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Trocchi',
                  color: FlutterFlowTheme.background,
                  fontSize: 20,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
