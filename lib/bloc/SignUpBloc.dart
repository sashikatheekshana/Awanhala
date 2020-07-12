import 'package:awanahala/events/SignUpEvent.dart';
import 'package:awanahala/models/User.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, User> {
  SignUpBloc(User initialState) : super(User());

  @override
  Stream<User> mapEventToState(SignUpEvent event) {
    throw UnimplementedError();
  }
}
