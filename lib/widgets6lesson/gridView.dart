import 'package:flutter/material.dart';

class GridView_Page extends StatefulWidget {
  static const String id = "GridView_Page";

  @override
  _GridView_PageState createState() => _GridView_PageState();
}

class _GridView_PageState extends State<GridView_Page> {
  DateTime date = DateTime.now();
  List avatars = [
    "assets/images/boy1.jpg",
    "assets/images/boy2.jpg",
    "assets/images/boy3.jpg",
    "assets/images/boy4.jpg",
    "assets/images/boy5.jpg",
    "assets/images/boy6.jpg",
    "assets/images/boy7.jpg",
    "assets/images/boy9.jpg",
    "assets/images/boy10.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: Text("Grid View"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(20),
        childAspectRatio: 7 / 10,
        crossAxisCount: 4,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [
          elementOfTable(avatars[0], "user 1", ""),
          elementOfTable(avatars[1], "user 1", ""),
          elementOfTable(avatars[2], "user 1", ""),
          elementOfTable(avatars[3], "user 1", ""),
          elementOfTable(avatars[4], "user 1", ""),
          elementOfTable(avatars[5], "user 1", ""),
          elementOfTable(avatars[6], "user 1", ""),
          elementOfTable(avatars[7], "user 1", ""),
          //elementOfTable(avatars[8], "user 1", ""),
        ],
      ),
    );
  }

  Widget elementOfTable(String image, String name, String title) {
    return Card(
      elevation: 20,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              height: 60,
              width: 60,
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
