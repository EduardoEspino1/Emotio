import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LecturaWidget extends StatefulWidget {
  const LecturaWidget({
    Key key,
    this.userAppointment,
  }) : super(key: key);

  final AppointmentsRecord userAppointment;

  @override
  _LecturaWidgetState createState() => _LecturaWidgetState();
}

class _LecturaWidgetState extends State<LecturaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFAFE3EB),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.asset(
            'assets/images/779D46D0-985A-4641-A64F-11902AD093CE.png',
          ).image,
        ),
      ),
    );
  }
}
