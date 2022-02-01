import 'package:flutter/material.dart';

class TabBarView_Page extends StatefulWidget {
  static const String id = "TabBarView_Page";

  @override
  _TabBarView_PageState createState() => _TabBarView_PageState();
}

class _TabBarView_PageState extends State<TabBarView_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade700,
          title: Text("TabBarView"),
          bottom: TabBar(
            //physics: NeverScrollableScrollPhysics(),
            //indicatorColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.image),
                text: "Image",
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
                text: "Account",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellowAccent,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
