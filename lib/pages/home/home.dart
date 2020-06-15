import 'package:flutter/material.dart';
import 'package:registerloginpage/model/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Name", style: TextStyle(fontSize: 30),),
            SizedBox(height: 40,),
            RaisedButton(
              onPressed: () async {
                await _auth.signOut();
              },
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
              child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Sign out',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
