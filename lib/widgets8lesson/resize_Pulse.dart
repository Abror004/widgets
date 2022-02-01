import 'package:flutter/material.dart';

class Resize_Pulse_Page extends StatefulWidget {
  static const String id = "Resize_Pulse_Page";

  @override
  _Resize_Pulse_PageState createState() => _Resize_Pulse_PageState();
}

class _Resize_Pulse_PageState extends State<Resize_Pulse_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Size> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween<Size>(begin: Size(150, 150), end: Size(200, 200))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.addStatusListener((AnimationStatus status) {
      if(status==AnimationStatus.completed){
        _controller.repeat();
      }
    });
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
        child: AnimatedBuilder(
          animation: _animation,
          builder: (ctx,ch)=> Container(
            width: _animation.value.width,
            height: _animation.value.height,
            child: Image.asset("assets/images/plus.png"),
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
