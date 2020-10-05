import 'package:awanahala/shared/sizeConfig.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class FoodItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockHeight = SizeConfig.safeBlockVertical;
    double blockWidth = SizeConfig.safeBlockHorizontal;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Food item"),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: blockHeight * 5,
              color: Colors.white,
            ),
            onPressed: (null),
            //should add selection drop down
          ),
          backgroundColor: Colors.red[400],
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.yellow[300],
              height: blockHeight * 20,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: blockWidth * 5,
                  ),
                  CircleAvatar(
                    radius: blockHeight * 8,
                    backgroundImage: AssetImage("images/ucsc.jpg"),
                  ),
                  SizedBox(
                    width: blockWidth * 8,
                  ),
                  Container(
                    child: Text(
                      "UCSC Canteen",
                      style: TextStyle(
                        fontSize: blockHeight * 2.5,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
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
