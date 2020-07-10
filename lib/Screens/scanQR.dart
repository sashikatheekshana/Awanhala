import 'package:flutter/material.dart';
import 'package:awanahala/shared/sizeConfig.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    top: blockHeight * 3,
                    bottom: blockHeight * 0.5,
                    right: blockWidth * 5,
                    left: blockWidth * 5),
                padding: EdgeInsets.symmetric(
                    horizontal: blockWidth * 5, vertical: 10.0),
                decoration: BoxDecoration(
                  color: Colors.green[100].withOpacity(0.4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Scan QR code",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: blockHeight * 2),
                    Text(
                      "Scan this QR code at the cashier",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: blockHeight * 3),
              // **** containr for QR ****
              Container(
                margin: EdgeInsets.only(
                    top: blockHeight * 3,
                    bottom: blockHeight * 0.5,
                    right: blockWidth * 5,
                    left: blockWidth * 5),
                height: 225.0,
                width: double.infinity,
                child: Image.asset('images/qrCode.jpg'),
              ),
              SizedBox(height: blockHeight * 3),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Collect your order befor  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    TextSpan(
                      text: '12.30am',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: blockHeight * 3),
              OutlineButton(
                shape: StadiumBorder(),
                textColor: Colors.red[400],
                child: Text('Cancel order'),
                splashColor: Colors.red[200],
                highlightedBorderColor: Colors.red[400],
                borderSide: BorderSide(
                    color: Colors.red[400], style: BorderStyle.solid, width: 1),
                onPressed: () {},
              ),
              Container(
                color: Colors.transparent,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 50.0, right: 50.0, top: 10.0, bottom: 10.0),
                  child: MaterialButton(
                    height: 50.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.transparent),
                    ),
                    child: Text(
                      "Collected",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    textColor: Colors.white,
                    splashColor: Colors.green,
                    color: Colors.green[300],
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
