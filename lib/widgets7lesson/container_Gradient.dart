import 'package:flutter/material.dart';

class Container_Gradient extends StatefulWidget {
  static const String id = "Container_Gradient";

  @override
  _Container_GradientState createState() => _Container_GradientState();
}

class _Container_GradientState extends State<Container_Gradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("PDP"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage("assets/images/boy1.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  spreadRadius: 3,
                  offset: Offset(10, 10)),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.blueAccent.withOpacity(0.5),
                  Colors.purpleAccent.withOpacity(0.35),
                  Colors.greenAccent.withOpacity(0.2),
                  Colors.yellowAccent.withOpacity(0.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
