import 'dart:js';
import 'package:pcod_helper/Screens/Authentication/Authentication.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Home/home.dart';
import 'package:pcod_helper/models/Usermodel.dart';
import 'package:js/js.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if(user == null){
      return Authentiacte();
    }else{
      return Home();
    }
  }
}
