import 'package:flutter/material.dart';

class Vertikal_Horizontal extends StatefulWidget {
  static const String id = "Vertikal_Horizontal";

  @override
  _Vertikal_HorizontalState createState() => _Vertikal_HorizontalState();
}

class _Vertikal_HorizontalState extends State<Vertikal_Horizontal> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return portraitMode();
        } else {
          return landscapeMode();
        }
      },
    );
  }

  Widget portraitMode() {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Container(
          alignment: Alignment.centerRight,
          child: Text(
            "HUMMING\nBIRD",
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
                children: [
                  TextSpan(
                    text: "FLUTTER WEB,\n",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: "THE BASICS\n",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text:
                        "\nIn this course we will go over the basics of using",
                  ),
                  TextSpan(
                    text: "\nFlutter Web for development.Topics will include",
                  ),
                  TextSpan(
                    text: "\nResponsive Layout, Deploying, Font Changes, Hover",
                  ),
                  TextSpan(
                    text: "\nfunctionality. Modals and more\n\n\n\n\n",
                  ),
                ],
              ),
            ),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: () {},
              color: Color.fromARGB(255, 31, 228, 146),
              child: Text(
                "join course",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      drawer: Container(
         width: (MediaQuery.of(context).size.width / 3) * 2,
         height: MediaQuery.of(context).size.height,
         color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Color.fromARGB(255, 31, 228, 146),
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "XXXXX XXX NOW\n",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: "xxxxxx"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Icon(
                        Icons.announcement_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Episodes",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Icon(
                        Icons.announcement,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "About",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(),
            ),
          ],
        ),
      ),

    );
  }

  Widget landscapeMode() {
    return Scaffold(
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
