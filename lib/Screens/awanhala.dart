import 'package:flutter/material.dart';
import 'package:awanahala/Screens/login.dart';

class Awanhala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Awanahala',
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/login': (context) => Login(),
        });
  }
}
