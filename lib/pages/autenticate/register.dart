import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registerloginpage/model/auth.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //Text field state
  String fullname = '';
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
                key: _formKey,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Lets get \nyou on board',
                    style: TextStyle(fontSize: 25, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        fullname = val;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
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

                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    onPressed: () async {
                      if(_formKey.currentState.validate()){

                      }
                    },
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'Register',
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
                        "Already have an account? ",
                        style: TextStyle(fontSize: 16, color: Colors.black45),
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Sign In',
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
