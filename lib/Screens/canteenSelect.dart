import 'dart:ui';

import 'package:awanahala/shared/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CanteenSelect extends StatefulWidget {
  @override
  _CanteenSelectState createState() => _CanteenSelectState();
}

class _CanteenSelectState extends State<CanteenSelect> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // leading: IconButton(
            //   icon: Icon(
            //     Icons.list,
            //     size: 40,
            //   ),
            //   onPressed: (null),
            //   //should add selection drop down
            // ),
            title: Text("Select the Canteen"),
            backgroundColor: Colors.red[400],
          ),
          drawer: Drawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: blockWidth * 10,
                    ),
                    CircleAvatar(
                      radius: blockHeight * 6.4,
                      backgroundImage: AssetImage("images/ucsc.jpg"),
                    ),
                    SizedBox(
                      width: blockWidth * 8,
                    ),
                    Container(
                      width: blockWidth * 0.5,
                      height: blockHeight * 5.25,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "UCSC Canteen",
                        style: TextStyle(
                          fontSize: blockHeight * 2.5,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: blockWidth * 10,
                    ),
                    CircleAvatar(
                      radius: blockHeight * 6.4,
                      backgroundImage: AssetImage("images/art.jpg"),
                    ),
                    SizedBox(
                      width: blockWidth * 8,
                    ),
                    Container(
                      width: blockWidth * 0.5,
                      height: blockHeight * 5.25,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "ART Canteen",
                        style: TextStyle(
                          fontSize: blockHeight * 2.5,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: blockWidth * 10,
                    ),
                    CircleAvatar(
                      radius: blockHeight * 6.4,
                      backgroundImage: AssetImage("images/law.jpg"),
                    ),
                    SizedBox(
                      width: blockWidth * 8,
                    ),
                    Container(
                      width: blockWidth * 0.5,
                      height: blockHeight * 5.25,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "LAW Canteen",
                        style: TextStyle(
                          fontSize: blockHeight * 2.5,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: blockWidth * 10,
                    ),
                    CircleAvatar(
                      radius: blockHeight * 6.4,
                      backgroundImage: AssetImage("images/science.jpg"),
                    ),
                    SizedBox(
                      width: blockWidth * 8,
                    ),
                    Container(
                      width: blockWidth * 0.5,
                      height: blockHeight * 5.25,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "SCIENCE Canteen",
                        style: TextStyle(
                          fontSize: blockHeight * 2.5,
                          color: Colors.black87,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
