import 'package:flutter/material.dart';
import 'package:widgets/widgets6lesson/alertDialog.dart';
import 'package:widgets/widgets6lesson/bottomNavigationBar.dart';
import 'package:widgets/widgets6lesson/gridView.dart';
import 'package:widgets/widgets6lesson/listView.dart';
import 'package:widgets/widgets6lesson/pageView.dart';
import 'package:widgets/widgets6lesson/singleChildScrollView.dart';
import 'package:widgets/widgets6lesson/tabBarView.dart';
import 'package:widgets/widgets7lesson/button_Decoration.dart';
import 'package:widgets/widgets7lesson/container_Gradient.dart';
import 'package:widgets/widgets7lesson/customized_TextField.dart';
import 'package:widgets/widgets7lesson/customized_TextFormField.dart';
import 'package:widgets/widgets7lesson/fancyBottomNavigator.dart';
import 'package:widgets/widgets7lesson/gesture_Detector.dart';
import 'package:widgets/widgets7lesson/navigationRail.dart';
import 'package:widgets/widgets7lesson/sliverAppBar_Page.dart';
import 'package:widgets/widgets7lesson/speedDial.dart';
import 'package:widgets/widgets8lesson/3D_Flip_Page.dart';
import 'package:widgets/widgets8lesson/Bounce_Page.dart';
import 'package:widgets/widgets8lesson/basic_Layout.dart';
import 'package:widgets/widgets8lesson/hinge_Page.dart';
import 'package:widgets/widgets8lesson/resize_Pulse.dart';
import 'package:widgets/widgets8lesson/slide.dart';

class HomePage extends StatefulWidget {
  static const String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        // child: MaterialButton(
        //     height: 50,
        //     minWidth: 200,
        //     color: Color.fromARGB(255, 31, 228, 146),
        //     child: Text(
        //       "Vertikal Horizontal",
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     onPressed: () {
        //       Navigator.pushNamed(context, Vertikal_Horizontal.id);
        //     }),
        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        child: ListView(
          children: [
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Button_Decoration",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Button_Decoration.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Alert Dialog",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Alert_Dialog.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Drawer",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Alert_Dialog.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "SingleChildScrollView_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SingleChildScrollView_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "ListView_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, ListView_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "GridView_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, GridView_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "PageView_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, PageView_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "BottomNavigationBar_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, BottomNavigationBar_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 200,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "TabBarView_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, TabBarView_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Container_Gradient",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Container_Gradient.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "GestureDetector_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, GestureDetector_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Customized_TextField_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Customized_TextField_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Customized_TextFormField_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, Customized_TextFormField_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "SpeedDial_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SpeedDial_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "FancyBottomNavigator_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, FancyBottomNavigator_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "SliverAppBar_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SliverAppBar_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "NavigationRail_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, NavigationRail_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Basic_Layout_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Basic_Layout_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Resize_Pulse_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Resize_Pulse_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Slide_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Slide_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Bounce_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Bounce_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "D3_Flip_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, D3_Flip_Page.id);
                }),
            MaterialButton(
                height: 50,
                minWidth: 100,
                color: Color.fromARGB(255, 31, 228, 146),
                child: Text(
                  "Hinge_Page",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Hinge_Page.id);
                }),
          ],
        ),
      ),
    );
  }
}
