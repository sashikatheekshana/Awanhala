import 'package:flutter/material.dart';
import 'package:awanahala/Screens/login.dart';
import 'package:awanahala/Screens/signUp.dart';
import 'package:awanahala/Screens/forgotPass.dart';
import 'package:awanahala/Screens/canteenSelect.dart';

class Awanhala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Awanahala',
        debugShowCheckedModeBanner: false,
        initialRoute: '/canteenSelect',
        routes: {
          '/login': (context) => Login(),
          '/sighUp': (context) => SignUp(),
          '/forgotPass': (context) => ForgotPass(),
          '/canteenSelect': (context) => CanteenSelect(),
        });
  }
}
