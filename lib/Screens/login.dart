import 'dart:convert';
import 'package:awanahala/Screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordObs = true;
  String email;
  String password;
  final _formKey = GlobalKey<FormState>();

  loginFun() async {
    if (_formKey.currentState.validate()) {
      // // _formKey.currentState.save();
      // // print('the form is valid');
      // // print(email);
      // // print(password);
      // // final body = jsonEncode({"email": email, "password": password});

      // // var url = 'http://10.0.2.2:3000/api/user/login';
      // // var response = await http.post(url,
      // //     headers: <String, String>{
      // //       'Content-Type': 'application/json; charset=UTF-8',
      // //     },
      // //     body: body);

      // // // var jsonResponse = json.decode(response.body);
      // // // print(jsonResponse);
      // // print(response.body.runtimeType);

      // // if (response.statusCode == 200) {
      // //   print('user login successfull');

      // //   Get.snackbar("Success", response.body,
      // //       icon: Icon(
      // //         Icons.done,
      // //         color: Colors.green,
      // //       ));

      // //   // Future.delayed(Duration(seconds: 10));
      //   Get.toNamed("/canteenSelect");
      // } else {
      //   print('login error');
      //   Get.snackbar(
      //     "Login error",
      //     response.body,
      //     icon: Icon(
      //       Icons.error,
      //       color: Colors.red,
      //     ),
      //   );
      // }
      Get.toNamed("/canteenSelect");
    } else {
      Get.snackbar(
        "Input error",
        "Please check your input",
        icon: Icon(
          Icons.error,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   actions: <Widget>[
        //     RaisedButton(onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => UserProfile()));
        //     })
        //   ],
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
                  SizedBox(height: 60.0),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: TextFormField(
                        onSaved: (val) {
                          email = val.trim();
                        },
                        validator: (val) {
                          if (val.isEmpty || !val.contains('@')) {
                            return "Valid email is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          prefixIcon: Icon(Icons.person),
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: TextFormField(
                        onSaved: (val) {
                          password = val.trim();
                        },
                        validator: (val) {
                          if (val.isEmpty) {
                            return "password is required";
                          }
                          return null;
                        },
                        obscureText: _isPasswordObs,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          prefixIcon: Icon(Icons.vpn_key),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isPasswordObs = !_isPasswordObs;
                              });
                            },
                            child: Icon(
                              _isPasswordObs ? Icons.visibility : Icons.visibility_off,
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
                  SizedBox(height: 35.0),
                  Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0, bottom: 10.0),
                      child: MaterialButton(
                        height: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        color: Colors.green[300],
                        onPressed: () {
                          loginFun();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/forgotPass');
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/sighUp');
                    },
                    child: Text(
                      "Sign Up",
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
