import 'package:flutter/material.dart';

class BottomNavigationBar_Page extends StatefulWidget {
  static const String id = "BottomNavigationBar_Page";

  @override
  _BottomNavigationBar_PageState createState() =>
      _BottomNavigationBar_PageState();
}

class _BottomNavigationBar_PageState extends State<BottomNavigationBar_Page> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: <Widget>[
          Container(
            color: Colors.pink,
            child: Center(
              child: Text("Page Home"),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text("Page Business"),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text("Page Business"),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text("Business"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.animateToPage(_selectedIndex,
              duration: Duration(milliseconds: 300), curve: Curves.linear);
        },
      ),
    );
  }
}
