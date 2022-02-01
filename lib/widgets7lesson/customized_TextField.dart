import 'package:flutter/material.dart';

class Customized_TextField_Page extends StatefulWidget {
  static const String id = "Customized_TextField_Page";

  @override
  _Customized_TextField_PageState createState() =>
      _Customized_TextField_PageState();
}

class _Customized_TextField_PageState extends State<Customized_TextField_Page> {
  bool isNotHide = true;

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Text Fields"),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: TextField(
                  controller: controller,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !isNotHide,
                  onSubmitted: (text) {
                    print("Submited Text : $text");
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'password',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 17),
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isNotHide ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            isNotHide = !isNotHide;
                          });
                        },
                      ),
                    suffix: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outlined),alignment: Alignment.bottomCenter,),
                  ),
                  onChanged: (text) {
                    print(text);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
