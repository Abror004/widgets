import 'package:flutter/material.dart';

class Customized_TextFormField_Page extends StatefulWidget {
  static const String id = "Customized_TextFormField_Page";

  @override
  _Customized_TextFormField_PageState createState() =>
      _Customized_TextFormField_PageState();
}

class _Customized_TextFormField_PageState
    extends State<Customized_TextFormField_Page> {
  final _formKey = GlobalKey<FormState>();
  String? _email, _password;
  //RegExp regex1 = RegExp('[0-9]+');

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        //backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text("Text Form Field"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (input) =>
                    !input!.contains("@") ? "Please enter a valid email" : null,
                onSaved: (input) => _email = input,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                validator: (input) =>
                    input!.length < 6
                        ? "Must be at least 6 charecters"
                        : null,
                onSaved: (input) => _password = input,
              ),
            ),
            MaterialButton(
              child: Text("Sign In"),
              color: Colors.blue,
              onPressed: _doSignIn,
            ),
          ],
        ),
      ),
    );
  }
}
