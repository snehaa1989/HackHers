import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcod_helper/Services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: RaisedButton(
          onPressed: () async {
            dynamic result = await _auth.SignInAnon();
            if(result == null){
              print("Error");
            }else{
              print(result);
            }
          },
          color: Colors.pinkAccent,
        ),
      )
    );
  }
}
