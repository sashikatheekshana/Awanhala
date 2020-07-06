import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CanteenSelect extends StatefulWidget {
  @override
  _CanteenSelectState createState() => _CanteenSelectState();
}

class _CanteenSelectState extends State<CanteenSelect> {
  @override
  Widget build(BuildContext context) {
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
            backgroundColor: Colors.red,
          ),
          drawer: Drawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("images/ucsc.jpg"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 2,
                      height: 35,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "UCSC Canteen",
                        style: TextStyle(
                          fontSize: 20,
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
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("images/art.jpg"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 2,
                      height: 35,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "ART Canteen",
                        style: TextStyle(
                          fontSize: 20,
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
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("images/law.jpg"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 2,
                      height: 35,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "LAW Canteen",
                        style: TextStyle(
                          fontSize: 20,
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
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("images/science.jpg"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 2,
                      height: 35,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.transparent,
                      child: Text(
                        "SCIENCE Canteen",
                        style: TextStyle(
                          fontSize: 20,
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
