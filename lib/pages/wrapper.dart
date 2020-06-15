import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registerloginpage/model/user.dart';
import 'package:registerloginpage/pages/autenticate/authenticate.dart';
import 'package:registerloginpage/pages/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    //return either Home or Authentication widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
