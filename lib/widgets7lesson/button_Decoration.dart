import 'package:flutter/material.dart';

class Button_Decoration extends StatefulWidget {
  static const String id = "Button_Decoration";

  @override
  _Button_DecorationState createState() => _Button_DecorationState();
}

class _Button_DecorationState extends State<Button_Decoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              height: 50,
              width: 200,
              //alignment: Alignment.center,
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Sing In",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
