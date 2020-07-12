import 'package:awanahala/models/User.dart';

abstract class AuthService {
  void userLogin(String email, String password);

  void userSignUp(User singUpUser);
}
