import 'package:flutter/material.dart';
import 'package:awanahala/Screens/login.dart';
import 'package:awanahala/Screens/signUp.dart';
import 'package:awanahala/Screens/forgotPass.dart';

class Awanhala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Awanahala',
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => Login(),
          '/sighUp': (context) => SignUp(),
          '/forgotPass': (context) => ForgotPass(),
        });
  }
}
