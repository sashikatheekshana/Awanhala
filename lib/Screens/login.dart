import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Awanhala Login'),
        ),
        body: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                )),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Awanhala2.png'),
                backgroundColor: null,
                radius: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
