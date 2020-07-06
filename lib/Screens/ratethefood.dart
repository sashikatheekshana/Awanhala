import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RateFood extends StatefulWidget {
  @override
  _RateFoodState createState() => _RateFoodState();
}

class _RateFoodState extends State<RateFood> {
  @override
  Widget build(BuildContext context) {
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
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 40,
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
              height: 40,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 80,
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
                  width: 80,
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
                  width: 80,
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
              height: 40,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 80,
                ),
                Text("Add a Complaint")
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
