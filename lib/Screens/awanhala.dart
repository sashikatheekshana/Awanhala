import 'package:awanahala/Screens/foodItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';
import 'signUp.dart';
import 'forgotPass.dart';
import 'registration.dart';
import 'finalReg.dart';
import 'home.dart';
import 'addToCart.dart';
import 'cart.dart';

import 'package:awanahala/Screens/login.dart';
import 'package:awanahala/Screens/signUp.dart';
import 'package:awanahala/Screens/forgotPass.dart';
import 'package:awanahala/Screens/canteenSelect.dart';
import 'package:awanahala/Screens/ratethefood.dart';

class Awanhala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Awanahala',
        debugShowCheckedModeBanner: false,
        initialRoute: '/cart',
        routes: {
          '/login': (context) => Login(),
          '/sighUp': (context) => SignUp(),
          '/forgotPass': (context) => ForgotPass(),
          '/registration': (context) => Registration(),
          '/finalReg': (context) => FinalReg(),
          '/home': (context) => Home(),
          '/canteenSelect': (context) => CanteenSelect(),
          '/rateFood': (context) => RateFood(),
          '/foodItem': (context) => FoodItem(),
          '/addToCart': (context) => AddToCart(),
          '/cart': (context) => Cart(),
        });
  }
}
