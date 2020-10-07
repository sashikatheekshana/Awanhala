import 'package:awanahala/Screens/foodItem.dart';
import 'package:awanahala/Screens/profile.dart';
import 'package:awanahala/bloc/SignUpBloc.dart';
import 'package:awanahala/models/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'login.dart';
import 'signUp.dart';
import 'forgotPass.dart';
import 'registration.dart';
import 'finalReg.dart';
import 'home.dart';
import 'cart.dart';
import 'scanQR.dart';
import 'canteenSelect.dart';
import 'ratethefood.dart';

class Awanhala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// <<<<<<< devsajith
//     return GetMaterialApp(
//         title: 'Awanahala',
//         debugShowCheckedModeBanner: false,
//         initialRoute: '/foodItem',
//         routes: {
//           '/login': (context) => Login(),
//           '/sighUp': (context) => SignUp(),
//           '/forgotPass': (context) => ForgotPass(),
//           '/registration': (context) => Registration(),
//           '/finalReg': (context) => FinalReg(),
//           '/home': (context) => Home(),
//           '/canteenSelect': (context) => CanteenSelect(),
//           '/rateFood': (context) => RateFood(),
//           '/foodItem': (context) => FoodItem(),
//           '/addToCart': (context) => AddToCart(),
//           '/cart': (context) => Cart(),
//           '/scanQR': (context) => ScanQR(),
//         });
// =======
    return BlocProvider<SignUpBloc>(
      create: (context) => SignUpBloc(User()),
      child: GetMaterialApp(
        title: 'Awanahala',
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',

        routes: {
          '/login': (context) => Login(),
          '/sighUp': (context) => SignUp(),
          '/forgotPass': (context) => ForgotPass(),
          '/registration': (context) => Registration(),
          '/finalReg': (context) => FinalReg(),
          '/home': (context) => Home(),
          '/canteenSelect': (context) => CanteenSelect(),
          '/rateFood': (context) => RateFood(),
          '/cart': (context) => Cart(),
          '/scanQR': (context) => ScanQR(),

        },
      ),
    );
// >>>>>>> master
  }
}
