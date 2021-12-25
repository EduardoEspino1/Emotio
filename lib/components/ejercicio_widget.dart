import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class EjercicioWidget extends StatefulWidget {
  const EjercicioWidget({
    Key key,
    this.userProfile,
  }) : super(key: key);

  final DocumentReference userProfile;

  @override
  _EjercicioWidgetState createState() => _EjercicioWidgetState();
}

class _EjercicioWidgetState extends State<EjercicioWidget> {
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
            'assets/images/5AC1B727-0E23-42CF-B061-7168E670FE79.png',
          ).image,
        ),
      ),
    );
  }
}
