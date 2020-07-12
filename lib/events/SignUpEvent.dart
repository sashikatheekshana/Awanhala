import 'package:awanahala/models/User.dart';

enum SignUpEventyType { addUserNameAndPWord, addOtherData }

class SignUpEvent {
  User user;
  SignUpEventyType signUpEventyType;

  SignUpEvent.addUserNameAndPWord(String username, String hashPass) {
    this.signUpEventyType = SignUpEventyType.addUserNameAndPWord;
    this.user.userName = username;
    this.user.passWordHash = hashPass;
  }

  SignUpEvent.addOtherData(
      String fullName, String phoneNum, String email, String nic) {
    this.signUpEventyType = SignUpEventyType.addOtherData;
    this.user.fullName = fullName;
    this.user.phoneNumber = phoneNum;
    this.user.email = email;
    this.user.nic = nic;
  }
}
