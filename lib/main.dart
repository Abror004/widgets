import 'package:flutter/material.dart';
import 'package:widgets/homePage.dart';
import 'package:widgets/vertikal_horizontal/vertikal_horizontal.dart';
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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        Vertikal_Horizontal.id: (context) => Vertikal_Horizontal(),
        Alert_Dialog.id: (context) => Alert_Dialog(),
        TabBarView_Page.id: (context) => TabBarView_Page(),
        Container_Gradient.id: (context) => Container_Gradient(),
        Button_Decoration.id: (context) => Button_Decoration(),
        SingleChildScrollView_Page.id: (context) =>
            SingleChildScrollView_Page(),
        ListView_Page.id: (context) => ListView_Page(),
        GridView_Page.id: (context) => GridView_Page(),
        PageView_Page.id: (context) => PageView_Page(),
        BottomNavigationBar_Page.id: (context) => BottomNavigationBar_Page(),
        GestureDetector_Page.id: (context) => GestureDetector_Page(),
        Customized_TextField_Page.id: (context) => Customized_TextField_Page(),
        Customized_TextFormField_Page.id: (context) =>
            Customized_TextFormField_Page(),
        SpeedDial_Page.id: (context) => SpeedDial_Page(),
        FancyBottomNavigator_Page.id: (context) => FancyBottomNavigator_Page(),
        SliverAppBar_Page.id: (context) => SliverAppBar_Page(),
        NavigationRail_Page.id: (context) => NavigationRail_Page(),
        Basic_Layout_Page.id: (context) => Basic_Layout_Page(),
        Resize_Pulse_Page.id: (context) => Resize_Pulse_Page(),
        Slide_Page.id: (context) => Slide_Page(),
        Bounce_Page.id: (context) => Bounce_Page(),
        D3_Flip_Page.id: (context) => D3_Flip_Page(),
        Hinge_Page.id: (context) => Hinge_Page(),
      },
    );
  }
}
