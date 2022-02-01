import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
class SpeedDial_Page extends StatefulWidget {
  static const String id="SpeedDial_Page";

  @override
  _SpeedDial_PageState createState() => _SpeedDial_PageState();
}

class _SpeedDial_PageState extends State<SpeedDial_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Speed Dial"),
      ),
      floatingActionButton: SpeedDial(
        activeBackgroundColor: Colors.green,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 15,
        onOpen: (){
          print("Speed Dial Opened!");
        },
        onClose: (){
          print("Speed Dial Closed!");
        },
        spaceBetweenChildren: 20,
        children: [
          SpeedDialChild(
            child: Icon(Icons.share_outlined),
            label: "Share",
          ),
          SpeedDialChild(
            child: Icon(Icons.edit),
            label: "Edit",
          ),
          SpeedDialChild(
            child: Icon(Icons.update),
            label: "Update",
          ),
          SpeedDialChild(
            child: Icon(Icons.update),
            label: "Update",
          ),
          SpeedDialChild(
            child: Icon(Icons.update),
            label: "Update",
          ),
          SpeedDialChild(
            child: Icon(Icons.update),
            label: "Update",
          ),
          SpeedDialChild(
            child: Icon(Icons.update),
            label: "Update",
          ),
        ],
      ),
    );
  }
}
