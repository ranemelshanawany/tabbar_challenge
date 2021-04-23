import 'package:flutter/material.dart';
import '../utils/styles_and_colors.dart';

class Analyze extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text ("Welcome to your analytics page!", style: textStyle, textAlign: TextAlign.center,),
          Image.asset('assets/chart1.png'),
          Image.asset('assets/chart2.png'),
        ],
      ),
    );
  }
}