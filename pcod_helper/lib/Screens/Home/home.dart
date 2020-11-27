import 'package:flutter/material.dart';
import 'package:pcod_helper/Services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Auth _auth = new Auth();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Home"),
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.person),
            onPressed: () async {
              await _auth.SignOut();
            },

          )
        ],
      ),
      body: Container(
        child: RaisedButton(
          onPressed: (){

          },
        ),
      ),
    );
  }
}
