import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registerloginpage/model/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //Text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20,
          ),
          child: Column(
            children: <Widget>[
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Welcome back, \nplease login \nto your account',
                    style: TextStyle(fontSize: 25, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    obscureText: true,
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(top: 8),
                    child: RichText(
                        text: TextSpan(
                            text: 'Forgot Password?',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Resset password!");
                              })),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () async {
                      print(email);
                      print(password);
                    },
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 16, color: Colors.black45),
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Sign Up',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  widget.toggleView();
                                })),
                    ],
                  )
                ],
              )),
            ],
          )),
    );
  }
}
