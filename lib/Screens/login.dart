import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Kantima Login'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  width: 160.0,
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
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.0, right: 50.0),
                    child: TextField(
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
                    child: TextField(
                      obscureText: _isPasswordShow,
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
                              _isPasswordShow = !_isPasswordShow;
                            });
                          },
                          child: Icon(
                            _isPasswordShow
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
                        "Log In",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      textColor: Colors.white,
                      splashColor: Colors.green,
                      color: Colors.green[300],
                      onPressed: () {},
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
    );
  }
}
