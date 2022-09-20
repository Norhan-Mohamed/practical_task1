import 'package:flutter/material.dart';

import 'screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(buildContext) {
    return MaterialApp(
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // This widget is the root of your application.
  @override
  var myFocus;
  void initState() {
    super.initState();
    myFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    myFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff69b7cf), Color(0xff3be6bc)])),
              height: 210,
            ),
            Container(
              height: 450,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color(0xff3fedbd),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: true,
                            decoration: InputDecoration(hintText: ' Email '),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email required";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            focusNode: myFocus,
                            decoration: InputDecoration(hintText: 'Password'),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password required";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton(
                                  splashColor: Color(0xff69b7cf),
                                  onPressed: () =>
                                      print(' to make a new password...'),
                                  child: Text(
                                    "Forget Password ?",
                                    style: TextStyle(
                                        color: Color(
                                          0xff3fedbd,
                                        ),
                                        fontSize: 15),
                                  )),
                              RaisedButton(
                                splashColor: Color(0xff69b7cf),
                                color: Color(0xff3fedbd),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    scaffoldKey.currentState!;
                                    ScaffoldMessenger(
                                        child: SnackBar(
                                            content: Text('logged in')));
                                  }
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              color: Color(0xff3fedbd),
              splashColor: Color(0xff69b7cf),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => secondScreen()));
              },
              child: Center(
                heightFactor: 2.9,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
