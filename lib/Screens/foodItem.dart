import 'package:awanahala/shared/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FoodItem extends StatelessWidget {
  String selectedCanteen; // ID(key) selected canteen

  FoodItem(this.selectedCanteen);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              color: Colors.red[400].withOpacity(0.6),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(width: 20.0),
                  CircleAvatar(
                    radius: 47,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundImage: AssetImage("images/ucsc.jpg"),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: 180.0,
                    child: Text(
                      "Managment Canteen ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: blockHeight * 8,
              child: Expanded(
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FlatButton(
                      disabledTextColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text(
                        "Breakfast",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (null),
                    ),
                    FlatButton(
                      disabledTextColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text(
                        "Lunch",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (null),
                    ),
                    FlatButton(
                      disabledTextColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text(
                        "Beverages",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (null),
                    ),
                    FlatButton(
                      color: Colors.pink,
                      disabledTextColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text(
                        "Short Eats",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: (null),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
