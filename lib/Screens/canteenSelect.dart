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
            leading: IconButton(
              icon: Icon(
                Icons.list,
                size: 40,
              ),
              onPressed: (null),
              //should add selection drop down
            ),
            title: Text("Select the Canteen"),
            backgroundColor: Colors.red,
          ),
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
                    Text(
                      "UCSC Canteen",
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
                    Text(
                      "ART Canteen",
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
                    Text(
                      "LAW Canteen",
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
                    Text(
                      "SCIENCE Canteen",
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
