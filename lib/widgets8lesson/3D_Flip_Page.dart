import 'package:flutter/material.dart';

class D3_Flip_Page extends StatefulWidget {
  static const String id = "D3_Flip_Page";

  @override
  _D3_Flip_PageState createState() => _D3_Flip_PageState();
}

class _D3_Flip_PageState extends State<D3_Flip_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(end: 1.0, begin: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.002)
            ..rotateX(3.14 * _animation.value),
          child: Container(
            color: Colors.blueAccent,
            width: 200,
            height: 200,
            child: Icon(
              Icons.accessibility_new,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
