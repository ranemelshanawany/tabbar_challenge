import 'package:flutter/material.dart';
import '../utils/styles_and_colors.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildCard (),
          _buildCard (),
          _buildCard ()
        ],
      ),
    );
  }

  _buildCard ()
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network("https://i.vimeocdn.com/portrait/20982096_640x640"),
              Text("Title", style: textStyle,),
              Text("Description here")
            ],
          ),
        ),
      ),
    );
  }
}
