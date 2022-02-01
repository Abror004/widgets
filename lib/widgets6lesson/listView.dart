import 'package:flutter/material.dart';


class ListView_Page extends StatefulWidget {
  static const String id = "ListView_Page";

  @override
  _ListView_PageState createState() => _ListView_PageState();
}

class _ListView_PageState extends State<ListView_Page> {
  List list = [
    Colors.blue,
    Colors.yellowAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.deepOrangeAccent,
    Colors.orangeAccent,
    Colors.deepPurpleAccent,
  ];
  List numbers = [
    1.0,
    6.0,
    3.0,
    9.0,
    10.0,
    5.0,
    20.0,
    4.0,
    7.0,
    8.0,
    2.0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(
      //   itemCount: list.length,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: 250,
      //       width: MediaQuery.of(context).size.width,
      //       color: list[index],
      //     );
      //   },
      // ),
      body: Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: list[index],
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(numbers[index]),
                    width: 150,
                    color: Colors.black,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
