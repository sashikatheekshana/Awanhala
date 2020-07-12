import 'package:awanahala/bloc/SignUpBlocObserver.dart';
import 'package:awanahala/service_locator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:awanahala/Screens/awanhala.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SignUpBlocObserver();
  setupServiceLocator();

  runApp(Awanhala());
}
