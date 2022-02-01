import 'package:flutter/material.dart';

class SliverAppBar_Page extends StatefulWidget {
  static const String id = "SliverAppBar_Page";

  @override
  _SliverAppBar_PageState createState() => _SliverAppBar_PageState();
}

class _SliverAppBar_PageState extends State<SliverAppBar_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            // floating: false,
            //snap: true,
            pinned: true,  //pasga tuwganda appbar qoladi
            elevation: 0,
            backgroundColor: Colors.blueGrey.shade800,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Hotel"),
              background: Image(
                image: AssetImage("assets/images/plus.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: ListTile(
                  title: Text("Hotel $index"),
                  subtitle: Text("Cost \$${(index + 1) * 100 + index + 12}"),
                  trailing: Icon(Icons.phone),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
