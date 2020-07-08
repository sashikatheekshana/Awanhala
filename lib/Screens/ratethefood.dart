import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:awanahala/shared/sizeConfig.dart';

class RateFood extends StatefulWidget {
  @override
  _RateFoodState createState() => _RateFoodState();
}

class _RateFoodState extends State<RateFood> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.white,
            ),
            onPressed: (null),
            //should add selection drop down
          ),
          title: Text("Rate the Food"),
          backgroundColor: Colors.red,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: blockHeight * 10,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: blockWidth * 15,
              ),
              child: Container(
                child: Text(
                  "Your Plate",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: blockHeight * 3,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: blockWidth * 23,
                ),
                Expanded(
                  child: Text(
                    "Fish Bun",
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          print("Thumbs up button clicked");
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          print("Thumbs down button clicked");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: blockWidth * 23,
                ),
                Expanded(
                  child: Text(
                    "Rolls",
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          print("Thumbs up button clicked");
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          print("Thumbs down button clicked");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: blockWidth * 23,
                ),
                Expanded(
                  child: Text(
                    "Tea",
                    textAlign: TextAlign.left,
                  ),
                ),
                Expanded(
                  child: Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          print("Thumbs up button clicked");
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.thumb_down,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          print("Thumbs down button clicked");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: blockHeight * 3,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: blockWidth * 23,
                ),
                Text("Add a Complaint")
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: blockWidth * 23,
                ),
                Expanded(
                  child: TextField(
                    minLines: 5,
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "Write your Complaint here",
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: blockWidth * 12,
                ),
              ],
            ),
            SizedBox(
              height: blockHeight * 2.5,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: blockWidth * 23,
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text("Add Rating"),
                    onPressed: () {
                      print("Add Rating Button Click");
                    },
                    padding: EdgeInsets.fromLTRB(blockWidth * 2,
                        blockHeight * 1, blockWidth * 2, blockHeight * 1),
                    color: Colors.grey,
                    textColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: blockWidth * 12,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
