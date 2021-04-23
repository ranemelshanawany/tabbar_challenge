import '../utils/styles_and_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerButton extends StatelessWidget {
  TimerButton(this.timer, this.info, this.color, this.onButtonPressed);

  final Function(String, String) onButtonPressed;
  String timer;
  String info;
  Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      child: TextButton(
        onPressed: () => onButtonPressed(timer, info),
        child: Stack(
          children: [_buildTextColumn(), _buildCircleAvatar()],
        ),
        style: TextButton.styleFrom(backgroundColor: AppColors.secondary),
      ),
    );
  }

  _buildTextColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTimer(),
        SizedBox(
          height: 10,
        ),
        _buildInfo()
      ],
    );
  }

  _buildInfo() {
    return Text(
      info,
      style: GoogleFonts.raleway(color: color),
    );
  }

  _buildTimer() {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0),
      child: Text(
        timer,
        style: GoogleFonts.raleway(
            fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }

  _buildCircleAvatar() {
    return Positioned(
      right: 1,
      top: 1,
      child: CircleAvatar(
        backgroundColor: color,
        backgroundImage: AssetImage('assets/circle.png'),
        radius: 17,
      ),
    );
  }
}
