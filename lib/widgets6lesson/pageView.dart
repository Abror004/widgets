import 'package:flutter/material.dart';

class PageView_Page extends StatefulWidget {
  static const String id = "PageView_Page";

  @override
  _PageView_PageState createState() => _PageView_PageState();
}

class _PageView_PageState extends State<PageView_Page> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        title: Text("Page View"),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        pageSnapping: false,
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.purpleAccent,
            child: Center(
              child: Text("Page 1"),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text("Page 2"),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            child: Center(
              child: Text("Page 3"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.animateToPage(_selectedIndex,
              duration: Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn);
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
