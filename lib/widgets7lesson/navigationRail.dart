import 'package:flutter/material.dart';

class NavigationRail_Page extends StatefulWidget {
  static const String id = "NavigationRail_Page";

  @override
  _NavigationRail_PageState createState() => _NavigationRail_PageState();
}

class _NavigationRail_PageState extends State<NavigationRail_Page> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Navigation Rail",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
          NavigationRail(
            labelType: NavigationRailLabelType.selected,
            leading: CircleAvatar(
              backgroundColor: Colors.purpleAccent,
              foregroundImage: AssetImage(
                "assets/images/plus.png",
              ),
            ),
            groupAlignment: 1,
            backgroundColor: Colors.blueGrey.shade800,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            destinations: const [
              NavigationRailDestination(
                label: SizedBox.shrink(),
                selectedIcon: Icon(
                  Icons.tune,
                  color: Colors.yellowAccent,
                ),
                icon: Icon(
                  Icons.tune_outlined,
                  color: Colors.white,
                ),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(bottom: 5, top: 40),
                label: SizedBox.shrink(),
                selectedIcon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Popular",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 5),
                label: SizedBox.shrink(),
                selectedIcon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Favourite",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        decoration: TextDecoration.underline,
                        fontSize: 15),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: SizedBox(
                    child: Text(
                      "Favourite",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 5),
                label: SizedBox.shrink(),
                selectedIcon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "inspiration",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        decoration: TextDecoration.underline,
                        fontSize: 15),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: SizedBox(
                    child: Text(
                      "inspiration",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.symmetric(vertical: 5),
                label: SizedBox.shrink(),
                selectedIcon: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "All",
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        decoration: TextDecoration.underline,
                        fontSize: 15),
                  ),
                ),
                icon: RotatedBox(
                  quarterTurns: 3,
                  child: SizedBox(
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
            selectedIndex: selectedIndex,
          ),
        ],
      ),
    );
  }
}
