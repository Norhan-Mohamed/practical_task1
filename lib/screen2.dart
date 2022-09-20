import 'package:flutter/material.dart';

class secondScreen extends StatelessWidget {
  secondScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff69b7cf), Color(0xff3be6bc)])),
            height: 250,
          ),
          Container(
            height: 410,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "SIGN UP",
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
                        TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Confirm Password'),
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
                        ElevatedButton(
                          // Color(0xff3fedbd),
                          // splashColor: Color(0xff69b7cf),
                          child: Text(
                            "sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xff3fedbd),
                          )),
                        ),
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
              Navigator.pop(context);
            },
            child: Center(
              heightFactor: 2.9,
              child: Text(
                "Log in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
