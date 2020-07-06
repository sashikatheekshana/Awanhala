import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isPasswordObs = true;
  bool _isReEnterPasswordObs = true;
  final _formKey = GlobalKey<FormState>();
  String _pass1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Cantima Sign Up"),
        // ),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 15.0,
                        child: Image.asset("images/Cantima.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Username is required';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          prefixIcon: Icon(Icons.person),
                          hintText: "Username",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length <= 6) {
                            return 'Password should be more than 6 char';
                          } else {
                            _pass1 = value;
                            return null;
                          }
                        },
                        obscureText: _isPasswordObs,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          prefixIcon: Icon(Icons.vpn_key),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isPasswordObs = !_isPasswordObs;
                              });
                            },
                            child: Icon(
                              _isPasswordObs
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length <= 6) {
                            return 'Password should be more than 6 char';
                          } else if (value != _pass1) {
                            return 'Passsword didn`t match';
                          } else {
                            return null;
                          }
                        },
                        obscureText: _isReEnterPasswordObs,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          prefixIcon: Icon(Icons.vpn_key),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isReEnterPasswordObs = !_isReEnterPasswordObs;
                              });
                            },
                            child: Icon(
                              _isReEnterPasswordObs
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                          ),
                          hintText: "Re Enter Password",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35.0),
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 50.0, right: 50.0, top: 10.0, bottom: 10.0),
                      child: MaterialButton(
                        height: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        color: Colors.green[300],
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.pushNamed(context, '/registration');
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    "Already have an account ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.black54,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
