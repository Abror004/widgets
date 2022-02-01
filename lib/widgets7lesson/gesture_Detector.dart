import 'package:flutter/material.dart';

class GestureDetector_Page extends StatefulWidget {
  static const String id="GestureDetector_Page";

  @override
  _GestureDetector_PageState createState() => _GestureDetector_PageState();
}

class _GestureDetector_PageState extends State<GestureDetector_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              //color: Colors.red,
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
              //color: Colors.grey,
              child: InkWell( 
                highlightColor: Colors.blue, //bosib turganda
                hoverColor: Colors.greenAccent,
                splashColor: Colors.red, //1marta bosganda
                focusColor: Colors.yellowAccent,
                onTap: (){
                  print("Sign Up Pressed");
                },
                mouseCursor: MouseCursor.defer,
                child: Container(
                  color: Colors.white10,
                  //margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: Text("demf",style: TextStyle(color: Colors.black,fontSize: 20),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
