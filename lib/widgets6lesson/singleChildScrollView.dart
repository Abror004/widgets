import 'package:flutter/material.dart';

class SingleChildScrollView_Page extends StatefulWidget {
  static const String id="SingleChildScrollView_Page";

  @override
  _SingleChildScrollView_PageState createState() => _SingleChildScrollView_PageState();
}

class _SingleChildScrollView_PageState extends State<SingleChildScrollView_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.pink,
            ),
            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.greenAccent,
            ),
            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.yellowAccent,
            ),
            Container(
              width: 250,
              height: MediaQuery.of(context).size.height,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
