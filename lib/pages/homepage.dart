import '../widgets/timer_button_widget.dart';
import 'view_details_page.dart';
import 'analyze.dart';
import 'profile.dart';
import 'tips.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/styles_and_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  bool upperTabPressed = false;
  String timer = "";
  String info = "";

  List<Widget> _pages = [Tips(), Analyze(), Profile()];
  List<String> appBarTitle = ["OFFERS", "ANALYTICS", "PROFILES"];

  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: _buildAppBar(),
      child: Column(
        children: [
          _buildTabBarPage(_currIndex),
          _buildButtonsTabBar(),
          _buildCupertinoTabBar()
        ],
      ),
    );
  }

  _buildCupertinoTabBar()
  {
    return CupertinoTabBar(
      items: <BottomNavigationBarItem>[
        _buildTabBarItem(icon: Icons.info, text:"Tips"),
        _buildTabBarItem(icon: Icons.bar_chart, text:"Analyze"),
        _buildTabBarItem(icon: Icons.category_rounded, text:"Profiles"),
      ],
      activeColor: AppColors.primary,
      iconSize: 40,
      backgroundColor: AppColors.secondary,
      currentIndex: _currIndex,
      onTap: (int index) {
        setState(() {
          upperTabPressed = false;
          _currIndex = index;
        });
      },
    );
  }

  _buildTabBarItem({IconData icon, String text})
  {
    return BottomNavigationBarItem(
        icon: Icon(icon), title: Text(text, style: tabbarTitleStyle,));
  }

  Widget _buildAppBar()
  {
    return CupertinoNavigationBar(
      backgroundColor: AppColors.secondaryDarker,
      middle: Text( upperTabPressed? "Timer" :
        appBarTitle[_currIndex],
        style: textStyle,
      ),
    );
  }

  Widget _buildTabBarPage(int index) {
    if(upperTabPressed == false)
      return Expanded(flex: 3,child: Center(child: _pages[index]));
    else
      return DetailsPage(timer, info);
  }

  onButtonPressed(String time, String name)
  {
    setState(() {
      upperTabPressed = true;
      timer = time;
      info = name;
    });
  }

  _buildButtonsTabBar() {

    List<String> timers = ["01:27:38", "01:27:38", "01:27:38", "01:27:38", "01:27:38"];
    List<String> infos = ["Arya - BreastFeeding", "Selin - BreastFeeding", "Ada - BreastFeeding",
      "LongerName - BreastFeeding", "EvenLongerNames - BreastFeeding"];
    List<Color> colors = [Color(0xFFD93B71), Color(0xFFBB5FE0), Color(0xFFDDE36A),
      Color(0xFFEE5C26), Color(0xFF5DBA78)];

    return CupertinoScrollbar(
        child: SizedBox(
          height: 70,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: timers.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, listIndex)
              {return TimerButton(timers[listIndex], infos[listIndex], colors[listIndex], onButtonPressed);})
          ),
        );
  }


}