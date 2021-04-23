import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {

  String timer;

  DetailsPage(this.timer, this.info);

  String info;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(timer, style: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w600)),
              Text(info, style: GoogleFonts.raleway(fontSize: 24, fontWeight: FontWeight.w400))
            ],
          ),
        ),
    );
  }
}
