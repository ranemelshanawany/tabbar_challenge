import 'package:flutter/material.dart';
import '../utils/styles_and_colors.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Welcome to your profile!", style: textStyle,),
            SizedBox(height: 15,),
            CircleAvatar(backgroundImage: NetworkImage("https://www.worldfuturecouncil.org/wp-content/uploads/2020/06/blank-profile-picture-973460_1280-1.png"), radius: 70,),
            _buildCard(context),
            _buildCard(context)
          ],
        ),
      ),
    );
  }

  _buildCard (context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width *0.8,
                  height: MediaQuery.of(context).size.width *0.8,
                  child: Image.network("https://i.vimeocdn.com/portrait/20982096_640x640")),
              Text("Title", style: textStyle,),
              Text("Description here")
            ],
          ),
        ),
      ),
    );
  }
}
