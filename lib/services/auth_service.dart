import 'package:awanahala/models/User.dart';

abstract class AuthService {
  Future<void> signIn(String email, String password);

  Future<void> signUp(User user);
}
