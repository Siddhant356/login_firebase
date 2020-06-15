import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:registerloginpage/model/auth.dart';
import 'package:registerloginpage/model/user.dart';
import 'package:registerloginpage/pages/wrapper.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

