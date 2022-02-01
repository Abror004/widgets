import 'dart:async';

import 'package:flutter/material.dart';

class Basic_Layout_Page extends StatefulWidget {
  static const String id = "Basic_Layout_Page";

  @override
  _Basic_Layout_PageState createState() => _Basic_Layout_PageState();
}

class _Basic_Layout_PageState extends State<Basic_Layout_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool res = true;
  // Future<void> timer(res) async{
  //   Timer(await Duration(seconds: 4), () {
  //     setState( (){
  //       res = false;
  //     });
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 500),reverseDuration: Duration(seconds: 2),);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animated"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image(
            height: 200,
            width: 200,
            image: AssetImage("assets/images/plus.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.forward();
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
