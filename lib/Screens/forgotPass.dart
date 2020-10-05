import 'package:flutter/material.dart';
import 'package:awanahala/shared/sizeConfig.dart';

class ForgotPass extends StatefulWidget {
  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  List<String> currentPin = ["", "", "", ""];
  TextEditingController firstPinController = TextEditingController();
  TextEditingController secondPinController = TextEditingController();
  TextEditingController thirdPinController = TextEditingController();
  TextEditingController fourthPinController = TextEditingController();
  int pinIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Verification"),
          backgroundColor: Colors.red[400],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: blockHeight * 2,
                  child: Center(
                    child: Text(
                      "Verify Phone",
                      style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: blockHeight * 10,
                      left: blockWidth * 15,
                      right: blockWidth * 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: "Please type the verification code send to ",
                            children: <TextSpan>[
                              TextSpan(
                                text: "0779232611",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: blockHeight * 2.5),
                      Container(
                        height: blockHeight * 8,
                        child: otpPinRow(),
                      ),
                      SizedBox(height: blockHeight * 3),
                      Container(
                        height: blockHeight * 6,
                        width: double.infinity,
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.green[400]),
                            ),
                            color: Colors.green[400],
                            textColor: Colors.white,
                            splashColor: Colors.green[200],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Verify Now",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(Icons.arrow_forward)
                              ],
                            ),
                            onPressed: () {}),
                      ),
                      SizedBox(height: blockHeight * 2),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Didn`t get code ?   ",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.black54,
                              ),
                            ),
                            Container(
                              height: blockHeight * 5,
                              width: blockWidth * 22,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.green[50]),
                                ),
                                color: Colors.green[50],
                                textColor: Colors.black54,
                                splashColor: Colors.green[200],
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                onPressed: () {
                                  //******** resend code function ************
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: blockHeight * 2),
                      Container(child: numberPad()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  numberPad() {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: blockHeight * 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  keyboardNumber(
                      number: 1,
                      onKeyPressed: () {
                        numberSetup("1");
                      }),
                  keyboardNumber(
                      number: 2,
                      onKeyPressed: () {
                        numberSetup("2");
                      }),
                  keyboardNumber(
                      number: 3,
                      onKeyPressed: () {
                        numberSetup("3");
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  keyboardNumber(
                      number: 4,
                      onKeyPressed: () {
                        numberSetup("4");
                      }),
                  keyboardNumber(
                      number: 5,
                      onKeyPressed: () {
                        numberSetup("5");
                      }),
                  keyboardNumber(
                      number: 6,
                      onKeyPressed: () {
                        numberSetup("6");
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  keyboardNumber(
                      number: 7,
                      onKeyPressed: () {
                        numberSetup("7");
                      }),
                  keyboardNumber(
                      number: 8,
                      onKeyPressed: () {
                        numberSetup("8");
                      }),
                  keyboardNumber(
                      number: 9,
                      onKeyPressed: () {
                        numberSetup("9");
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: blockWidth * 14,
                    child: SizedBox(),
                  ),
                  keyboardNumber(
                      number: 0,
                      onKeyPressed: () {
                        numberSetup("0");
                      }),
                  Container(
                    height: blockHeight * 5,
                    width: blockWidth * 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: MaterialButton(
                      splashColor: Colors.green[100],
                      padding: EdgeInsets.all(5.0),
                      onPressed: () {
                        clearPin();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: blockHeight * 4,
                      child: Icon(
                        Icons.backspace,
                        color: Colors.green[300].withOpacity(0.8),
                        // fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  numberSetup(String textNumber) {
    if (pinIndex == 0) {
      pinIndex = 1;
    } else if (pinIndex < 4) {
      pinIndex++;
    }
    setPin(pinIndex, textNumber);
    currentPin[pinIndex - 1] = textNumber;
    String strPin = "";
    currentPin.forEach((element) {
      strPin += element;
    });
    if (pinIndex == 4) {
      print(strPin);
    }
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        firstPinController.text = text;
        break;
      case 2:
        secondPinController.text = text;
        break;
      case 3:
        thirdPinController.text = text;
        break;
      case 4:
        fourthPinController.text = text;
        break;
      default:
    }
  }

  otpPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        pinNumber(textEditingController: firstPinController),
        pinNumber(textEditingController: secondPinController),
        pinNumber(textEditingController: thirdPinController),
        pinNumber(textEditingController: fourthPinController),
      ],
    );
  }

  clearPin() {
    if (pinIndex == 0) {
      pinIndex = 0;
    } else if (pinIndex == 4) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }
}

class pinNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  pinNumber({this.textEditingController});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return Container(
      width: blockWidth * 14,
      child: TextField(
        showCursor: false,
        style: TextStyle(
          color: Colors.green[800],
          fontSize: 25.0,
          fontWeight: FontWeight.w500,
        ),
        controller: textEditingController,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          filled: true,
          fillColor: Colors.green[100],
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class keyboardNumber extends StatelessWidget {
  final int number;
  final Function() onKeyPressed;

  keyboardNumber({this.number, this.onKeyPressed});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return Container(
      height: blockHeight * 8,
      width: blockWidth * 14,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green[300].withOpacity(0.8),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        splashColor: Colors.green[700],
        padding: EdgeInsets.all(5.0),
        onPressed: onKeyPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        height: blockHeight * 20,
        child: Text(
          "$number",
          style: TextStyle(
            fontSize: 23.0,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
