import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditacionWidget extends StatefulWidget {
  const MeditacionWidget({
    Key key,
    this.userProfile,
  }) : super(key: key);

  final DocumentReference userProfile;

  @override
  _MeditacionWidgetState createState() => _MeditacionWidgetState();
}

class _MeditacionWidgetState extends State<MeditacionWidget> {
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
            'assets/images/1A5D8040-F561-46D0-9FEF-00E147F77746.png',
          ).image,
        ),
      ),
    );
  }
}
