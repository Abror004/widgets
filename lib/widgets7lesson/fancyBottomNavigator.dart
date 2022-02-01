import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomNavigator_Page extends StatefulWidget {
  static const String id="FancyBottomNavigator_Page";

  @override
  _FancyBottomNavigator_PageState createState() => _FancyBottomNavigator_PageState();
}

class _FancyBottomNavigator_PageState extends State<FancyBottomNavigator_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation"),
      ),
      body: Center(
        child: Text("Home"),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.black,
        textColor: Colors.black,
        barBackgroundColor: Colors.blue,
        inactiveIconColor: Colors.black,
        activeIconColor: Colors.blue,
        tabs: [
          TabData(iconData: Icons.home, title: "Home",onclick: (){
            Navigator.pop(context);
          }),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.account_circle_outlined, title: "Profile"),
          TabData(
              iconData: Icons.favorite_outlined,
              title: "Favourites"),
        ],
        onTabChangedListener: (position){},
      ),
    );
  }
}
